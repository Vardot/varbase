<?php

/**
 * @file
 * Enables modules and site configuration for a Varbase site installation.
 */

use Symfony\Component\Yaml\Yaml;
use Drupal\Core\Form\FormStateInterface;
use Drupal\language\Entity\ConfigurableLanguage;
use Drupal\varbase\Config\ConfigBit;
use Drupal\varbase\Form\ConfigureMultilingualForm;
use Drupal\varbase\Form\AssemblerForm;
use Drupal\varbase\Form\DevelopmentToolsAssemblerForm;
use Vardot\Entity\EntityDefinitionUpdateManager;
use Drupal\path_alias\Entity\PathAlias;
use Drupal\Component\Utility\Environment;

/**
 * Implements hook_form_FORM_ID_alter() for install_configure_form().
 *
 * Allows the profile to alter the site configuration form.
 */
function varbase_form_install_configure_form_alter(&$form, FormStateInterface $form_state) {
  // Add a placeholder as example that one can choose an arbitrary site name.
  $form['site_information']['site_name']['#attributes']['placeholder'] = t('My Official Site Name');

  // Default site email noreply(at)vardot.com.
  $form['site_information']['site_mail']['#default_value'] = 'noreply@vardot.com';
  $form['site_information']['site_mail']['#attributes']['style'] = 'width: 25em;';

  // Default user 1 username should be 'webmaster'.
  $form['admin_account']['account']['name']['#default_value'] = 'webmaster';
  $form['admin_account']['account']['name']['#attributes']['disabled'] = TRUE;
  $form['admin_account']['account']['mail']['#default_value'] = 'webmaster@vardot.com';
  $form['admin_account']['account']['mail']['#description'] = t('In most cases, and for <a target="_blank" href="@link">Vardot</a>’s specific use, we recommend this to always be <em>webmaster@vardot.com</em>.', ['@link' => 'http://vardot.com']);
}

/**
 * Implements hook_install_tasks().
 */
function varbase_install_tasks(&$install_state) {
  // Determine whether the enable multiligual option is selected during the
  // Multilingual configuration task.
  $needs_configure_multilingual = (isset($install_state['varbase']['enable_multilingual']) && $install_state['varbase']['enable_multilingual'] == TRUE);

  return [
    'varbase_multilingual_configuration_form' => [
      'display_name' => t('Multilingual configuration'),
      'display' => TRUE,
      'type' => 'form',
      'function' => ConfigureMultilingualForm::class,
    ],
    'varbase_configure_multilingual' => [
      'display_name' => t('Configure multilingual'),
      'display' => $needs_configure_multilingual,
      'type' => 'batch',
    ],
    'varbase_extra_components' => [
      'display_name' => t('Extra components'),
      'display' => TRUE,
      'type' => 'form',
      'function' => AssemblerForm::class,
    ],
    'varbase_assemble_extra_components' => [
      'display_name' => t('Assemble extra components'),
      'display' => TRUE,
      'type' => 'batch',
    ],
    'varbase_development_tools' => [
      'display_name' => t('Development tools'),
      'display' => TRUE,
      'type' => 'form',
      'function' => DevelopmentToolsAssemblerForm::class,
    ],
    'varbase_assemble_development_tools' => [
      'display_name' => t('Assemble development tools'),
      'display' => TRUE,
      'type' => 'batch',
    ],
  ];
}

/**
 * Implements hook_install_tasks_alter().
 */
function varbase_install_tasks_alter(array &$tasks, array $install_state) {
  $tasks['install_finished']['function'] = 'varbase_after_install_finished';
}

/**
 * Batch job to assemble Varbase extra components.
 *
 * @param array $install_state
 *   The current install state.
 *
 * @return array
 *   The batch job definition.
 */
function varbase_assemble_extra_components(array &$install_state) {

  // Default Varbase components, which must be installed.
  $default_components = ConfigBit::getList('configbit/default.components.varbase.bit.yml', 'install_default_components', TRUE, 'dependencies', 'profile', 'varbase');

  $batch = [];

  // Install default components first.
  foreach ($default_components as $default_component) {
    $batch['operations'][] = [
      'varbase_assemble_extra_component_then_install',
      (array) $default_component,
    ];
  }

  // Install selected extra features.
  $selected_extra_features = [];
  $selected_extra_features_configs = [];

  if (isset($install_state['varbase']['extra_features_values'])) {
    $selected_extra_features = $install_state['varbase']['extra_features_values'];
  }

  if (isset($install_state['varbase']['extra_features_configs'])) {
    $selected_extra_features_configs = $install_state['varbase']['extra_features_configs'];
  }

  if (isset($selected_extra_features['varbase_heroslider_media'])
  && $selected_extra_features['varbase_heroslider_media'] == TRUE) {
    $batch['operations'][] = [
      'varbase_install_component',
      (array) 'enabled_varbase_heroslider_media_content',
    ];
  }
  else {
    $batch['operations'][] = [
      'varbase_install_component',
      (array) 'disabled_varbase_heroslider_media_content',
    ];
  }

  // Get the list of extra features config bits.
  $extraFeatures = ConfigBit::getList('configbit/extra.components.varbase.bit.yml', 'show_extra_components', TRUE, 'dependencies', 'profile', 'varbase');

  // If we do have selected extra features.
  if (count($selected_extra_features) && count($extraFeatures)) {
    // Have batch processes for each selected extra features.
    foreach ($selected_extra_features as $extra_feature_key => $extra_feature_checked) {
      if ($extra_feature_checked) {

        // If the extra feature was a module and not enabled, then enable it.
        if (!\Drupal::moduleHandler()->moduleExists($extra_feature_key)) {
          // Add the checked extra feature to the batch process to be enabled.
          $batch['operations'][] = [
            'varbase_assemble_extra_component_then_install',
            (array) $extra_feature_key,
          ];
        }

        if (count($selected_extra_features_configs) &&
            isset($extraFeatures[$extra_feature_key]['config_form']) &&
            $extraFeatures[$extra_feature_key]['config_form'] == TRUE &&
            isset($extraFeatures[$extra_feature_key]['formbit'])) {

          $formbit_file_name = drupal_get_path('profile', 'varbase') . '/' . $extraFeatures[$extra_feature_key]['formbit'];

          if (file_exists($formbit_file_name)) {

            // Added the selected extra feature configs to the batch process
            // with the same function name in the formbit.
            $batch['operations'][] = ['varbase_save_editable_config_values',
              (array) [
                $extra_feature_key,
                $formbit_file_name,
                $selected_extra_features_configs,
              ],
            ];
          }
        }
      }
    }

    // Hide Wornings and status messages.
    $batch['operations'][] = [
      'varbase_hide_warning_and_status_messages',
      (array) TRUE,
    ];

    // Fix entity updates to clear up any mismatched entity.
    $batch['operations'][] = [
      'varbase_fix_entity_update',
      (array) TRUE,
    ];
  }

  // Install selected Demo content.
  $selected_demo_content = [];
  $selected_demo_content_configs = [];

  if (isset($install_state['varbase']['demo_content_values'])) {
    $selected_demo_content = $install_state['varbase']['demo_content_values'];
  }

  if (isset($install_state['varbase']['demo_content_configs'])) {
    $selected_demo_content_configs = $install_state['varbase']['demo_content_configs'];
  }

  // Get the list of demo content config bits.
  $demoContent = ConfigBit::getList('configbit/demo.content.varbase.bit.yml', 'show_demo', TRUE, 'dependencies', 'profile', 'varbase');

  // If we do have demo_content and we have selected demo_content.
  if (count($selected_demo_content) && count($demoContent)) {
    // Have batch processes for each selected demo content.
    foreach ($selected_demo_content as $demo_content_key => $demo_content_checked) {
      if ($demo_content_checked) {

        // If the demo content was a module and not enabled, then enable it.
        if (!\Drupal::moduleHandler()->moduleExists($demo_content_key)) {
          // Add the checked demo content to the batch process to be enabled.
          $batch['operations'][] = [
            'varbase_assemble_extra_component_then_install',
            (array) $demo_content_key,
          ];
        }

        if (count($selected_demo_content_configs) &&
            isset($demoContent[$demo_content_key]['config_form']) &&
            $demoContent[$demo_content_key]['config_form'] == TRUE &&
            isset($demoContent[$demo_content_key]['formbit'])) {

          $formbit_file_name = drupal_get_path('profile', 'varbase') . '/' . $demoContent[$demo_content_key]['formbit'];
          if (file_exists($formbit_file_name)) {

            // Added the selected development configs to the batch process
            // with the same function name in the formbit.
            $batch['operations'][] = ['varbase_save_editable_config_values',
              (array) [
                $demo_content_key,
                $formbit_file_name,
                $selected_demo_content_configs,
              ],
            ];
          }
        }
      }
    }

    // Hide Wornings and status messages.
    $batch['operations'][] = [
      'varbase_hide_warning_and_status_messages',
      (array) TRUE,
    ];

    // Fix entity updates to clear up any mismatched entity.
    $batch['operations'][] = [
      'varbase_fix_entity_update',
      (array) TRUE,
    ];

  }

  // Uninstall list of not needed modules after the config had been loaded.
  // To be loaded from a ConfigBit yml file.
  $uninstall_components = ['varbase_default_content'];

  if (isset($selected_extra_features['varbase_heroslider_media'])
    && $selected_extra_features['varbase_heroslider_media'] == TRUE) {
    $uninstall_components[] = 'enabled_varbase_heroslider_media_content';
  }
  else {
    $uninstall_components[] = 'disabled_varbase_heroslider_media_content';
  }

  // Reset timestamp for default content.
  $batch['operations'][] = [
    'varbase_reset_timestamp_for_default_content',
    (array) TRUE,
  ];

  if (count($uninstall_components) > 0) {
    foreach ($uninstall_components as $uninstall_component) {
      $batch['operations'][] = [
        'varbase_uninstall_component',
        (array) $uninstall_component,
      ];
    }
  }

  return $batch;
}

/**
 * Batch job to assemble Varbase extra components.
 *
 * @param array $install_state
 *   The current install state.
 *
 * @return array
 *   The batch job definition.
 */
function varbase_assemble_development_tools(array &$install_state) {

  $batch = [];

  // Install selected Development tools.
  $selected_development_tools = [];
  $selected_development_configs = [];

  if (isset($install_state['varbase']['development_tools_values'])) {
    $selected_development_tools = $install_state['varbase']['development_tools_values'];
  }

  if (isset($install_state['varbase']['development_tools_configs'])) {
    $selected_development_configs = $install_state['varbase']['development_tools_configs'];
  }

  // Development tools.
  $developmentTools = ConfigBit::getList('configbit/development.tools.varbase.bit.yml', 'show_development_tools', TRUE, 'dependencies', 'profile', 'varbase');

  // If we do have development tools and we have selected development tools.
  if (count($selected_development_tools) && count($developmentTools)) {
    // Have batch processes for each selected development tool.
    foreach ($selected_development_tools as $development_tool_key => $development_tool_checked) {
      if ($development_tool_checked) {

        // If the development tool was a module and not enabled, then enable it.
        if (!\Drupal::moduleHandler()->moduleExists($development_tool_key)) {
          // Add checked development tool to the batch process to be enabled.
          $batch['operations'][] = [
            'varbase_assemble_extra_component_then_install',
            (array) $development_tool_key,
          ];
        }

        if (count($selected_development_configs) &&
            isset($developmentTools[$development_tool_key]['config_form']) &&
            $developmentTools[$development_tool_key]['config_form'] == TRUE &&
            isset($developmentTools[$development_tool_key]['formbit'])) {

          $formbit_file_name = drupal_get_path('profile', 'varbase') . '/' . $developmentTools[$development_tool_key]['formbit'];
          if (file_exists($formbit_file_name)) {

            // Added the selected development configs to the batch process
            // with the same function name in the formbit.
            $batch['operations'][] = ['varbase_save_editable_config_values',
              (array) [
                $development_tool_key,
                $formbit_file_name,
                $selected_development_configs,
              ],
            ];
          }
        }
      }
    }

    // Hide Wornings and status messages.
    $batch['operations'][] = [
      'varbase_hide_warning_and_status_messages',
      (array) TRUE,
    ];

    // Fix entity updates to clear up any mismatched entity.
    $batch['operations'][] = ['varbase_fix_entity_update', (array) TRUE];
  }

  return $batch;
}

/**
 * Batch job to configure multilingual components.
 *
 * @param array $install_state
 *   The current install state.
 *
 * @return array
 *   The batch job definition.
 */
function varbase_configure_multilingual(array &$install_state) {
  $batch = [];

  // If the multiligual config checkbox were checked.
  if (isset($install_state['varbase']['enable_multilingual'])
         && $install_state['varbase']['enable_multilingual'] == TRUE) {

    // Install the Varbase internationalization feature module.
    $batch['operations'][] = [
      'varbase_assemble_extra_component_then_install',
      (array) 'varbase_internationalization',
    ];

    // Add all selected languages and then translatvarbase_hide_messagesion
    // will fetched for theme.
    if (isset($install_state['varbase']['multilingual_languages'])
        && is_array($install_state['varbase']['multilingual_languages'])) {
      foreach ($install_state['varbase']['multilingual_languages'] as $language_code) {
        $batch['operations'][] = [
          'varbase_configure_language_and_fetch_traslation',
          (array) $language_code,
        ];
      }
    }

    // Hide Wornings and status messages.
    $batch['operations'][] = [
      'varbase_hide_warning_and_status_messages',
      (array) TRUE,
    ];

    // Change configurations to work with enable_multilingual.
    $batch['operations'][] = [
      'varbase_config_bit_for_multilingual',
      (array) TRUE,
    ];

  }
  else {
    // Change configurations to work with NO multilingual.
    $batch['operations'][] = [
      'varbase_config_bit_for_multilingual',
      (array) FALSE,
    ];
  }

  // Fix entity updates to clear up any mismatched entity.
  $batch['operations'][] = [
    'varbase_fix_entity_update',
    (array) TRUE,
  ];

  return $batch;
}

/**
 * Batch function to assemble and install needed extra components.
 *
 * @param string|array $extra_component
 *   Name of the extra component.
 */
function varbase_assemble_extra_component_then_install($extra_component) {
  \Drupal::service('module_installer')->install((array) $extra_component, TRUE);
}

/**
 * Batch function to save editable config values for extra components.
 *
 * @param string|array $extra_component_machine_name
 *   Machine name key of the extra component.
 * @param string|array $formbit_file_name
 *   FormBit file name.
 * @param string|array $editable_config_values
 *   Editable config values.
 */
function varbase_save_editable_config_values($extra_component_machine_name, $formbit_file_name, $editable_config_values) {
  include_once $formbit_file_name;
  call_user_func_array($extra_component_machine_name . "_submit_formbit", [$editable_config_values]);
}

/**
 * Batch function to add selected langauges then fetch all traslation.
 *
 * @param string|array $language_code
 *   Language code to install and fetch all traslation.
 */
function varbase_configure_language_and_fetch_traslation($language_code) {
  ConfigurableLanguage::createFromLangcode($language_code)->save();
}

/**
 * Batch function to fix entity updates to clear up any mismatched entity.
 *
 * Entity and/or field definitions, The following changes were detected in
 * the entity type and field definitions.
 *
 * @param string|array $entity_update
 *   To entity update or not.
 */
function varbase_fix_entity_update($entity_update) {
  if ($entity_update) {
    \Drupal::classResolver()
      ->getInstanceFromDefinition(EntityDefinitionUpdateManager::class)
      ->applyUpdates();
  }
}

/**
 * Batch function to update configs with config bit configurations.
 *
 * @param bool $enable_multilingual
 *   Use multilignual in the site.
 */
function varbase_config_bit_for_multilingual($enable_multilingual) {

  // Change configurations to work with enable_multilingual.
  // Each module will manage its multilingual config.
}

/**
 * Batch function to Install needed modules.
 *
 * @param string|array $install_component
 *   Name of the extra component.
 */
function varbase_install_component($install_component) {
  if (!\Drupal::moduleHandler()->moduleExists($install_component)) {
    \Drupal::service('module_installer')->install([$install_component], FALSE);
  }
}

/**
 * Batch function to Uninstall list of not needed modules.
 *
 * After the config had been loaded.
 *
 * @param string|array $uninstall_component
 *   Name of the extra component.
 */
function varbase_uninstall_component($uninstall_component) {
  if (\Drupal::moduleHandler()->moduleExists($uninstall_component)) {
    \Drupal::service('module_installer')->uninstall((array) $uninstall_component, FALSE);
  }
}

/**
 * Batch to reset timestamp for default content.
 *
 * @param string|array $reset
 *   To entity update or not.
 */
function varbase_reset_timestamp_for_default_content($reset) {

  if ($reset) {
    // Reset timestamp for all file's default content.
    $file_storage = \Drupal::service('entity_type.manager')->getStorage('file');
    $file_ids = $file_storage->getQuery()->execute();
    if (isset($file_ids)
      && is_array($file_ids)
      && count($file_ids) > 0) {

      foreach ($file_ids as $fid) {
        $file = \Drupal::service('entity_type.manager')->getStorage('file')->load($fid);
        if (isset($file)) {
          $file->set('created', \Drupal::time()->getCurrentTime());
          $file->save();
        }
      }
    }

    // Reset timestamp for all Media's default content.
    $media_storage = \Drupal::service('entity_type.manager')->getStorage('media');
    $media_ids = $media_storage->getQuery()->execute();
    if (isset($media_ids)
      && is_array($media_ids)
      && count($media_ids) > 0) {

      foreach ($media_ids as $mid) {
        $media = \Drupal::service('entity_type.manager')->getStorage('media')->load($mid);
        if (isset($media)) {
          $media->set('created', \Drupal::time()->getCurrentTime());
          $media->save();
        }
      }
    }

    // Reset timestamp for all Node's default content.
    $node_storage = \Drupal::service('entity_type.manager')->getStorage('node');
    $node_ids = $node_storage->getQuery()->execute();
    if (isset($node_ids)
      && is_array($node_ids)
      && count($node_ids) > 0) {

      foreach ($node_ids as $nid) {
        $node = \Drupal::service('entity_type.manager')->getStorage('node')->load($nid);
        if (isset($node)) {
          $node->set('created', \Drupal::time()->getCurrentTime());
          $node->save();
        }
      }
    }
  }
}

/**
 * Varbase after install finished.
 *
 * Lanuch auto Varbase Tour auto launch after install.
 *
 * @param array $install_state
 *   The current install state.
 *
 * @return array
 *   A renderable array with a redirect header.
 */
function varbase_after_install_finished(array &$install_state) {

  // Mark all updates by the update helper checklist as successful on install.
  if (\Drupal::moduleHandler()->moduleExists('update_helper_checklist')) {
    $checkList = \Drupal::service('update_helper_checklist.update_checklist');
    $checkList->markAllUpdates();
  }

  // Import managed config to the active config at this time of install.
  $profile_path_managed = drupal_get_path('profile', 'varbase') . '/config/managed/';
  $managed_config_path = $profile_path_managed . 'block.block.vartheme_bs4_copyright.yml';
  $managed_config_content = file_get_contents($managed_config_path);
  $managed_config_data = (array) Yaml::parse($managed_config_content);
  $managed_config_factory = \Drupal::configFactory()->getEditable('block.block.vartheme_bs4_copyright');
  $managed_config_factory->setData($managed_config_data)->save(TRUE);

  // Entity updates to clear up any mismatched entity and/or field definitions
  // And Fix changes were detected in the entity type and field definitions.
  \Drupal::classResolver()
    ->getInstanceFromDefinition(EntityDefinitionUpdateManager::class)
    ->applyUpdates();

  // Full flash and clear cash and rebuilding newly created routes.
  // After install of extra modules by install: in the .info.yml files.
  // In Varbase profile and all Varbase components.
  // ---------------------------------------------------------------------------
  // * Necessary inlitilization for the entire system.
  // * Account for changed config by the end install.
  // * Flush all persistent caches.
  // * Flush asset file caches.
  // * Wipe the Twig PHP Storage cache.
  // * Rebuild module and theme data.
  // * Clear all plugin caches.
  // * Rebuild the menu router based on all rebuilt data.
  drupal_flush_all_caches();

  // Set front page to "/node".
  // Issue #3188641: Change the set front page to "/node" process from
  // using static node id to front page path by the alias.
  // https://www.drupal.org/project/varbase_core/issues/3188641
  try {
    $path_alias_query = \Drupal::entityQuery('path_alias');
    $path_alias_query->condition('alias', '/node', '=');
    $alias_ids = $path_alias_query->execute();

    if (count($alias_ids) > 0) {
      foreach ($alias_ids as $alias_id) {

        if (!(end($alias_ids))) {
          $path_alias = PathAlias::load($alias_id);
          $path_alias->delete();
        }
        else {
          $page_front_path = PathAlias::load($alias_id)->getPath();

          \Drupal::configFactory()->getEditable('system.site')
            ->set('page.front', $page_front_path)
            ->save();
        }
      }
    }
  }
  catch (\Exception $e) {
    \Drupal::messenger()->addError($e->getMessage());
  }

  global $base_url;

  // After install direction.
  $after_install_direction = $base_url . '/?welcome';

  install_finished($install_state);
  $output = [];

  // Clear all messages.
  \Drupal::service('messenger')->deleteAll();

  $output = [
    '#title' => t('Varbase'),
    'info' => [
      '#markup' => t('<p>Congratulations, you have installed Varbase!</p><p>If you are not redirected to the front page in 5 seconds, Please <a href="@url">click here</a> to proceed to your installed site.</p>', [
        '@url' => $after_install_direction,
      ]),
    ],
    '#attached' => [
      'http_header' => [
        ['Cache-Control', 'no-cache'],
      ],
    ],
  ];

  $meta_redirect = [
    '#tag' => 'meta',
    '#attributes' => [
      'http-equiv' => 'refresh',
      'content' => '0;url=' . $after_install_direction,
    ],
  ];
  $output['#attached']['html_head'][] = [$meta_redirect, 'meta_redirect'];

  return $output;
}

/**
 * Batch function to hide warning messages.
 *
 * @param bool $hide
 *   To hide or not.
 */
function varbase_hide_warning_and_status_messages($hide) {
  if ($hide && !isset($_SESSION['messages']['error'])) {
    unset($_SESSION['messages']);
  }
}

/**
 * Implements hook_toolbar_alter().
 */
function varbase_toolbar_alter(&$items) {
  if (\Drupal::currentUser()->hasPermission('access toolbar')
    && !empty($items['admin_toolbar_tools'])) {
    $items['admin_toolbar_tools']['#attached']['library'][] = 'varbase/toolbar.icon';
  }
}

/**
 * Implements hook_requirements().
 */
function varbase_requirements($phase) {
  $requirements = [];
  $phpVersion = phpversion();
  $memoryLimit = ini_get('memory_limit');
  $maxExecutionTime = ini_get('max_execution_time');

  if ($phase === "install") {
    if (version_compare($phpVersion, "8.0", "<")) {
      $requirements['php'] = [
        'title' => t('PHP'),
        'description' => t('Your PHP installation is too old. It is recommended to upgrade to PHP version <b>%php_version</b> or higher for the best ongoing support. See <a href="http://php.net/supported-versions.php">PHP\'s version support documentation</a>', ['%php_version' => "8.0"]),
        'severity' => REQUIREMENT_WARNING,
      ];
    }

    if (!Environment::checkMemoryLimit(256, $memoryLimit)) {
      $requirements['php_memory_limit'] = [
        'title' => t('PHP memory limit'),
        'description' => t('Consider increasing your PHP memory limit to <b>%memory_recommended_limit</b> M to help prevent errors in the installation process.', ['%memory_recommended_limit' => 256]),
        'severity' => REQUIREMENT_WARNING,
      ];
    }

    if ($maxExecutionTime < 180) {
      $requirements['max_execution_time'] = [
        'title' => t('Recommended maximum execution time'),
        'description' => t('Your current setting for <b>max_execution_time</b> is less than <b>%recommended_max_execution_time</b>. Change your PHP settings or contact your server administrator to set it to the recommended value.', ['%recommended_max_execution_time' => 180]),
        'severity' => REQUIREMENT_WARNING,
      ];
    }

    if (!extension_loaded('yaml')) {
      $requirements['php_yaml_extension'] = [
        'title' => 'PHP YAML extension',
        'description' => t('The PHP YAML extension is not enabled. It is recommended that you enable the PHP YAML extension for your server.'),
        'severity' => REQUIREMENT_WARNING,
      ];
    }
  }

  return $requirements;
}
