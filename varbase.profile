<?php

/**
 * @file
 * Enables modules and site configuration for a Varbase site installation.
 */

use Drupal\Core\Form\FormStateInterface;
use Drupal\language\Entity\ConfigurableLanguage;
use Drupal\varbase\Config\ConfigBit;
use Drupal\varbase\Form\ConfigureMultilingualForm;
use Drupal\varbase\Form\AssemblerForm;
use Drupal\varbase\Form\DevelopmentToolsAssemblerForm;

/**
 * Implements hook_form_FORM_ID_alter() for install_configure_form().
 *
 * Allows the profile to alter the site configuration form.
 */
function varbase_form_install_configure_form_alter(&$form, FormStateInterface $form_state) {
  // Add a placeholder as example that one can choose an arbitrary site name.
  $form['site_information']['site_name']['#attributes']['placeholder'] = t('My Official Site Name');

  // Default site email noreply@vardot.com .
  $form['site_information']['site_mail']['#default_value'] = 'noreply@vardot.com';
  $form['site_information']['site_mail']['#attributes']['style'] = 'width: 25em;';

  // Default user 1 username should be 'webmaster'.
  $form['admin_account']['account']['name']['#default_value'] = 'webmaster';
  $form['admin_account']['account']['name']['#attributes']['disabled'] = TRUE;
  $form['admin_account']['account']['mail']['#default_value'] = 'webmaster@vardot.com';
  $form['admin_account']['account']['mail']['#description'] = t('In most case, and for <a target="_blank" href="@link">Vardot</a> specific use, we recommend this to always be <em>webmaster@vardot.com</em>.', array('@link' => 'http://vardot.com'));
}

/**
 * Implements hook_install_tasks().
 */
function varbase_install_tasks(&$install_state) {
  // Determine whether the enable multiligual option is selected during the
  // Multilingual configuration task.
  $needs_configure_multilingual = (isset($install_state['varbase']['enable_multilingual']) && $install_state['varbase']['enable_multilingual'] == TRUE);

  return array(
    'varbase_multilingual_configuration_form' => array(
      'display_name' => t('Multilingual configuration'),
      'display' => TRUE,
      'type' => 'form',
      'function' => ConfigureMultilingualForm::class,
    ),
    'varbase_configure_multilingual' => array(
      'display_name' => t('Configure multilingual'),
      'display' => $needs_configure_multilingual,
      'type' => 'batch',
    ),
    'varbase_extra_components' => array(
      'display_name' => t('Extra components'),
      'display' => TRUE,
      'type' => 'form',
      'function' => AssemblerForm::class,
    ),
    'varbase_assemble_extra_components' => array(
      'display_name' => t('Assemble extra components'),
      'display' => TRUE,
      'type' => 'batch',
    ),
    'varbase_development_tools' => array(
      'display_name' => t('Development tools'),
      'display' => TRUE,
      'type' => 'form',
      'function' => DevelopmentToolsAssemblerForm::class,
    ),
    'varbase_assemble_development_tools' => array(
      'display_name' => t('Assemble development tools'),
      'display' => TRUE,
      'type' => 'batch',
    ),
  );
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
    $batch['operations'][] = ['varbase_assemble_extra_component_then_install', (array) $default_component];
  }
  
  // Install selected extra features.
  $selected_extra_features = $install_state['varbase']['extra_features_values'];
  foreach ($selected_extra_features as $extra_feature_key => $extra_feature_checked) {
    if ($extra_feature_checked) {
      $batch['operations'][] = ['varbase_assemble_extra_component_then_install', (array) $extra_feature_key];
    }
  }
  
  // Install selected Demo content.
  $selected_demo_content = $install_state['varbase']['demo_content_values'];
  foreach ($selected_demo_content as $demo_content_key => $demo_content_checked) {
    if ($demo_content_checked) {
      $batch['operations'][] = ['varbase_assemble_extra_component_then_install', (array) $demo_content_key];
    }
  }

  // Hide Wornings and status messages.
  $batch['operations'][] = ['varbase_hide_warning_and_status_messages', (array) TRUE];

  // Fix entity updates to clear up any mismatched entity.
  $batch['operations'][] = ['varbase_fix_entity_update', (array) TRUE];

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
  $selected_development_tools = $install_state['varbase']['development_tools_values'];
  $selected_development_configs = $install_state['varbase']['development_tools_configs'];

  foreach ($selected_development_tools as $development_tool_key => $development_tool_checked) {
    if ($development_tool_checked) {
      $batch['operations'][] = ['varbase_assemble_extra_component_then_install', (array) $development_tool_key];
    }
  }

  // Hide Wornings and status messages.
  $batch['operations'][] = ['varbase_hide_warning_and_status_messages', (array) TRUE];

  // Fix entity updates to clear up any mismatched entity.
  $batch['operations'][] = ['varbase_fix_entity_update', (array) TRUE];

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
  $batch = array();

  // If the multiligual config checkbox were checked.
  if (isset($install_state['varbase']['enable_multilingual'])
         && $install_state['varbase']['enable_multilingual'] == TRUE) {

    // Install the Varbase internationalization feature module.
    $batch['operations'][] = ['varbase_assemble_extra_component_then_install', (array) 'varbase_internationalization'];

    // Add all selected languages and then translatvarbase_hide_messagesion
    // will fetched for theme.
    foreach ($install_state['varbase']['multilingual_languages'] as $language_code) {
      $batch['operations'][] = ['varbase_configure_language_and_fetch_traslation', (array) $language_code];
    }

    // Hide Wornings and status messages.
    $batch['operations'][] = ['varbase_hide_warning_and_status_messages', (array) TRUE];

    // Change configurations to work with enable_multilingual.
    $batch['operations'][] = ['varbase_config_bit_for_multilingual', (array) TRUE];

  }
  else {
    // Change configurations to work with NO multilingual.
    $batch['operations'][] = ['varbase_config_bit_for_multilingual', (array) FALSE];
  }

  // Fix entity updates to clear up any mismatched entity.
  $batch['operations'][] = ['varbase_fix_entity_update', (array) TRUE];

  return $batch;
}

/**
 * Batch function to assemble and install needed extra components.
 *
 * @param string|array $extra_component
 *   Name of the extra component.
 */
function varbase_assemble_extra_component_then_install($extra_component) {
  \Drupal::service('module_installer')->install((array) $extra_component);
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
    \Drupal::entityDefinitionUpdateManager()->applyUpdates();
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
  if ($enable_multilingual) {

    // Put back the language config if it was not in before installation.
    ConfigBit::actionUnArchiveFiles('configbit/language.action.varbase.bit.yml', 'enable_multilingual', TRUE, 'profile', 'varbase');

    // Put back the language config bit.
    ConfigBit::actionAdd('configbit/varbase_landing.info.bit.yml', 'enable_multilingual', TRUE, 'dependencies', 'profile', 'varbase');
    ConfigBit::actionAdd('configbit/varbase_page.info.bit.yml', 'enable_multilingual', TRUE, 'dependencies', 'profile', 'varbase');
    ConfigBit::actionAdd('configbit/varbase_media.info.bit.yml', 'enable_multilingual', TRUE, 'dependencies', 'profile', 'varbase');
  }
  else {
    // Change configurations to work with NO multilingual.
    // Archive the language config out before installation.
    ConfigBit::actionArchiveFiles('configbit/language.action.varbase.bit.yml', 'enable_multilingual', FALSE, 'profile', 'varbase');

    // Remove language config bit before installation.
    ConfigBit::actionRemove('configbit/varbase_landing.info.bit.yml', 'enable_multilingual', FALSE, 'dependencies', 'profile', 'varbase');
    ConfigBit::actionRemove('configbit/varbase_page.info.bit.yml', 'enable_multilingual', FALSE, 'dependencies', 'profile', 'varbase');
    ConfigBit::actionRemove('configbit/varbase_media.info.bit.yml', 'enable_multilingual', FALSE, 'dependencies', 'profile', 'varbase');
  }

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
