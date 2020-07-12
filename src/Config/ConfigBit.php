<?php

namespace Drupal\varbase\Config;

use Symfony\Component\Yaml\Yaml;
use Drupal\Core\Config\Config;
use Drupal\Core\Config\ConfigCrudEvent;
use Drupal\Core\Config\ConfigEvents;
use Drupal\Core\Config\ConfigFactoryInterface;
use Drupal\Core\Config\ConfigManagerInterface;
use Drupal\Core\Extension\ModuleHandlerInterface;
use Drupal\Core\Database\Connection;
use Drupal\Core\DependencyInjection\ContainerInjectionInterface;
use Symfony\Component\EventDispatcher\EventSubscriberInterface;
use Symfony\Component\DependencyInjection\ContainerInterface;
use Drupal\Component\Utility\NestedArray;
use Drupal\Component\Utility\DiffArray;
use Drupal\Core\Plugin\CachedDiscoveryClearerInterface;

/**
 * Class ConfigBit.
 *
 * Defines Config bit to help in managing custom config which used in install.
 *
 * @package Drupal\varbase\Config
 */
class ConfigBit implements EventSubscriberInterface, ContainerInjectionInterface {

  /**
   * The configuration factory.
   *
   * @var \Drupal\Core\Config\ConfigFactoryInterface
   */
  protected $configFactory;

  /**
   * The configuration manager.
   *
   * @var \Drupal\Core\Config\ConfigManagerInterface
   */
  protected $configManager;

  /**
   * The module handler service.
   *
   * @var \Drupal\Core\Extension\ModuleHandlerInterface
   */
  protected $moduleHandler;

  /**
   * Active database connection.
   *
   * @var \Drupal\Core\Database\Connection
   */
  protected $database;

  /**
   * A plugin cache clear instance.
   *
   * @var \Drupal\Core\Plugin\CachedDiscoveryClearerInterface
   */
  protected $pluginCacheClearer;

  /**
   * ConfigBit construct.
   *
   * @param \Drupal\Core\Config\ConfigFactoryInterface $config_factory
   *   A config factory for retrieving required config objects.
   * @param \Drupal\Core\Config\ConfigManagerInterface $config_manager
   *   The configuration manager.
   * @param \Drupal\Core\Extension\ModuleHandlerInterface $module_handler
   *   The module handler service.
   * @param \Drupal\Core\Database\Connection $database
   *   The database connection to be used.
   * @param \Drupal\Core\Plugin\CachedDiscoveryClearerInterface $plugin_cache_clearer
   *   A plugin cache clear instance.
   */
  public function __construct(
    ConfigFactoryInterface $config_factory,
    ConfigManagerInterface $config_manager,
    ModuleHandlerInterface $module_handler,
    Connection $database,
    CachedDiscoveryClearerInterface $plugin_cache_clearer
  ) {
    $this->configFactory = $config_factory;
    $this->configManager = $config_manager;
    $this->moduleHandler = $module_handler;
    $this->database = $database;
    $this->pluginCacheClearer = $plugin_cache_clearer;
  }

  /**
   * {@inheritdoc}
   */
  public static function create(ContainerInterface $container) {
    return new static(
    $container->get('config.factory'),
    $container->get('config.manager'),
    $container->get('module_handler'),
    $container->get('database'),
    $container->get('plugin.cache_clearer')
    );
  }

  /**
   * Get list of supported config types.
   */
  protected static function supportedConfigTypes() {
    return [
      // ----------------------------------------------------------------------.
      // When content type config had been saved.
      // ----------------------------------------------------------------------.
      'node.type' => [
        'config_name_match' => "/^node.type.*$/",
        'token' => 'CONTENT_TYPE',
        'token_variant' => 'type',
        'config_template_file' => 'node.type.CONTENT_TYPE.bit.yml',
        'targetEntityType' => 'node',
        'plugin.cache_clearer' => TRUE,
      ],
      // ----------------------------------------------------------------------.
      // When a form display for a content type config had been saved.
      // ----------------------------------------------------------------------.
      'core.entity_form_display.node.CONTENT_TYPE.default' => [
        'config_name_match' => "/^core.entity_form_display.node.*.default$/",
        'token' => 'CONTENT_TYPE',
        'token_variant' => 'bundle',
        'config_template_file' => 'core.entity_form_display.node.CONTENT_TYPE.default.bit.yml',
        'targetEntityType' => 'node',
        'mode' => 'default',
        'plugin.cache_clearer' => TRUE,
      ],
      // ----------------------------------------------------------------------.
      // When an entityqueue config had been saved.
      // ----------------------------------------------------------------------.
      'entityqueue.entity_queue.ENTITYQUEUE_NAME' => [
        'config_name_match' => "/^entityqueue.entity_queue.*$/",
        'token' => 'ENTITYQUEUE_NAME',
        'token_variant' => 'id',
        'config_template_file' => 'entityqueue.entity_queue.ENTITYQUEUE_NAME.bit.yml',
        'targetEntityType' => 'entity_subqueue',
      ],
      // ----------------------------------------------------------------------.
      // When a form display for an entityqueue config had been saved.
      // ----------------------------------------------------------------------.
      'core.entity_form_display.entityqueue.entity_queue.ENTITYQUEUE_NAME.default' => [
        'config_name_match' => "/^core.entity_form_display.entityqueue.entity_queue.*.default$/",
        'token' => 'ENTITYQUEUE_NAME',
        'token_variant' => 'id',
        'config_template_file' => 'core.entity_form_display.entityqueue.entity_queue.ENTITYQUEUE_NAME.default.bit.yml',
        'targetEntityType' => 'entity_subqueue',
        'mode' => 'default',
      ],
    ];
  }

  /**
   * {@inheritdoc}
   *
   * @return array
   *   The event names to listen for, and the methods that should be executed.
   */
  public static function getSubscribedEvents() {
    $events[ConfigEvents::SAVE][] = ['configSave', -9000];
    return $events;
  }

  /**
   * React to a config object being saved.
   *
   * @param \Drupal\Core\Config\ConfigCrudEvent $event
   *   The Config crud event.
   */
  public function configSave(ConfigCrudEvent $event) {
    $saved_config = $event->getConfig();
    $saved_config_name = $saved_config->getName();

    $supportedConfigTypes = $this->supportedConfigTypes();

    // Process config bits for each supported config type.
    foreach ($supportedConfigTypes as $supportedConfigType) {
      if (preg_match($supportedConfigType['config_name_match'], $saved_config_name)) {
        $this->processConfigBits($supportedConfigType, $saved_config);
      }
    }
  }

  /**
   * Process Config Bits.
   *
   * @param array $supportedConfigType
   *   The supported config type.
   * @param \Drupal\Core\Config\Config $saved_config
   *   The saved config.
   */
  protected function processConfigBits(array $supportedConfigType, Config $saved_config) {

    // Get saved cofnig name.
    $saved_config_name = $saved_config->getName();

    // Get token variant for entity type name.
    $token_variant = $this->configFactory->getEditable($saved_config_name)->get($supportedConfigType['token_variant']);

    // Have the config template file name.
    $config_template_file = DRUPAL_ROOT . '/' . drupal_get_path('profile', 'varbase') . '/configbit/varbase_config_templates/' . $supportedConfigType['config_template_file'];

    if (file_exists($config_template_file)) {
      // Get config file contents.
      $config_template_file_contents = file_get_contents($config_template_file);

      // Using string manipulation to replace the entity type token with
      // the current entity type name.
      $config_template_file_contents = str_replace($supportedConfigType['token'], $token_variant, $config_template_file_contents);

      // Parse the yml file content to an array of data.
      $config_template_file_data = (array) Yaml::parse($config_template_file_contents);

      if (isset($config_template_file_data['config_bits'])
        && is_array($config_template_file_data['config_bits'])) {

        foreach ($config_template_file_data['config_bits'] as $target_config_bit_name => $target_config_bit_actions) {

          // Get the config bit factory for the current config bit changes.
          $target_config_bit_factory = $this->configFactory->getEditable($target_config_bit_name);
          $save_actions = 0;

          if (isset($target_config_bit_actions)
            && is_array($target_config_bit_actions)
            && count($target_config_bit_actions) > 0) {

            foreach ($target_config_bit_actions as $config_action) {

              // Add config action.
              if (isset($config_action['add'])
                && $this->validateDependencies($config_action['add'])
                && $this->applyConfigActionAdd($config_action['add'], $target_config_bit_name, $target_config_bit_factory)) {

                $save_actions++;
              }

              // Remove config action.
              if (isset($config_action['remove'])
                && $this->validateDependencies($config_action['remove'])
                && $this->applyConfigActionRemove($config_action['remove'], $target_config_bit_name, $target_config_bit_factory)) {

                $save_actions++;
              }

              // Import new config if config does not exists.
              if (isset($config_action['import'])
                && $this->validateDependencies($config_action['import'])
                && $this->applyConfigActionImport($config_action['import'], $target_config_bit_name, $target_config_bit_factory)) {

                $save_actions++;
              }

            }

            if ($save_actions > 0) {
              // Save target config after finishing all config action changes.
              $target_config_bit_factory->save(TRUE);

              // Flushes plugins caches on requisted.
              if (isset($supportedConfigType['plugin.cache_clearer'])
                && $supportedConfigType['plugin.cache_clearer'] == TRUE) {

                $this->pluginCacheClearer->clearCachedDefinitions();
              }
            }
          }

        }
      }
    }
  }

  /**
   * Apply Config Action Add.
   *
   * @param array $config_action
   *   The config action.
   * @param string $target_config_bit_name
   *   The target config bit name.
   * @param \Drupal\Core\Config\Config $target_config_bit_factory
   *   The target config object.
   *
   * @return bool
   *   The status of the action.
   */
  protected function applyConfigActionAdd(array $config_action, string $target_config_bit_name, Config &$target_config_bit_factory) {

    if (isset($config_action['target_config_path'])
      && isset($config_action['target_config_value'])) {

      $target_config_data = $target_config_bit_factory->get($config_action['target_config_path']);

      if (isset($target_config_data)
        && $this->expectedTargetConfig($config_action, $target_config_data)) {

        $final_config_data = NestedArray::mergeDeep($target_config_data, $config_action['target_config_value']);
        $target_config_bit_factory->set($config_action['target_config_path'], $final_config_data);
        return TRUE;
      }
    }

    return FALSE;
  }

  /**
   * Apply Config Action Remove.
   *
   * @param array $config_action
   *   The config action.
   * @param string $target_config_bit_name
   *   The target config bit name.
   * @param \Drupal\Core\Config\Config $target_config_bit_factory
   *   The target config object.
   *
   * @return bool
   *   The status of the action.
   */
  protected function applyConfigActionRemove(array $config_action, string $target_config_bit_name, Config &$target_config_bit_factory) {

    if (isset($config_action['target_config_path'])
      && is_string($config_action['target_config_path'])
      && isset($config_action['target_config_remove_index'])) {

      $target_config_data = $target_config_bit_factory->get($config_action['target_config_path']);

      if (isset($target_config_data)
        && $this->expectedTargetConfig($config_action, $target_config_data)) {

        if (isset($target_config_data[$config_action['target_config_remove_index']])) {
          unset($target_config_data[$config_action['target_config_remove_index']]);
          $target_config_bit_factory->set($config_action['target_config_path'], $target_config_data);
          return TRUE;
        }
      }
    }

    return FALSE;
  }

  /**
   * Apply Config Action Import.
   *
   * @param array $config_action
   *   The config action.
   * @param string $target_config_bit_name
   *   The target config bit name.
   * @param \Drupal\Core\Config\Config $target_config_bit_factory
   *   The target config object.
   *
   * @return bool
   *   The status of the action.
   */
  protected function applyConfigActionImport(array $config_action, string $target_config_bit_name, Config &$target_config_bit_factory) {
    if (!$this->configExists($target_config_bit_name)
      && isset($config_action['target_config_value'])) {
      $target_config_bit_factory->setData($config_action['target_config_value']);
      return TRUE;
    }

    return FALSE;
  }

  /**
   * Validate dependencies for Varbase config template bit data.
   *
   * @param array $config_template_data
   *   The config template data.
   *
   * @return bool
   *   The status if dependencies are valid.
   */
  protected function validateDependencies(array $config_template_data) {

    if (isset($config_template_data['dependencies'])
      && is_array($config_template_data['dependencies'])) {

      $dependencies = $config_template_data['dependencies'];

      if (isset($dependencies['module'])
        && is_array($dependencies['module'])) {

        foreach ($dependencies['module'] as $module) {
          if (!$this->moduleHandler->moduleExists($module)) {
            return FALSE;
          }
        }
      }

      if (isset($dependencies['config'])
        && is_array($dependencies['config'])) {

        $all_config = $this->configFactory->listAll();

        if (!empty($all_config)) {
          $missing = [];
          $missing = array_merge($missing, array_diff($dependencies['config'], $all_config));

          if (!empty($missing) && count($missing) > 0) {
            return FALSE;
          }
        }
      }
    }

    return TRUE;
  }

  /**
   * Is this config exists or not yet in the database.
   *
   * @param string $config_name
   *   The name of the config.
   *
   * @return bool
   *   The status of cofnig.
   */
  protected function configExists(string $config_name) {

    $query = $this->database->select('config', 'c');
    $query->condition('c.name', $config_name, '=');
    $query->addExpression('COUNT(*)', 'count');

    $config_count = $query->execute()->fetchField();

    if ($config_count == 1) {
      return TRUE;
    }

    return FALSE;
  }

  /**
   * Check expected target config.
   *
   * @param array $config_action
   *   The config action.
   * @param array $target_config_data
   *   The target config data.
   */
  protected function expectedTargetConfig(array $config_action, array $target_config_data) {
    return ($this->targetConfigExpectedToHave($config_action, $target_config_data)
      && $this->targetConfigExpectedNotToHave($config_action, $target_config_data)
      && $this->targetConfigExpectedToHaveIndex($config_action, $target_config_data)
      && $this->targetConfigExpectedNotToHaveIndex($config_action, $target_config_data));
  }

  /**
   * Check target config expected to have.
   *
   * @param array $config_action
   *   The config action.
   * @param array $target_config_data
   *   The target config data.
   */
  protected function targetConfigExpectedToHave(array $config_action, array $target_config_data) {
    $target_config_expected_to_have = TRUE;

    if (isset($config_action['target_config_expected_to_have'])) {
      // Computes the difference of arrays with additional index check.
      // containing all the values from [target config expected to have]
      // that are not present in [target config data].
      // ----------------------------------------------------------------------.
      // Wild card exption to have in all listed configs.
      if (isset($config_action['expected_config_wild_card'])) {
        $wild_card_configs = $this->configFactory->listAll($config_action['expected_config_wild_card']);
        foreach ($wild_card_configs as $wild_card_name) {
          $wild_card_factory = $this->configFactory->getEditable($wild_card_name);
          $wild_card_data = $wild_card_factory->get($config_action['target_config_path']);
          $wild_card_expected_to_have_diff = DiffArray::diffAssocRecursive($config_action['target_config_expected_not_to_have'], $wild_card_data);
          if (isset($wild_card_expected_to_have_diff)
            && count($wild_card_expected_to_have_diff) > 0) {
            $target_config_expected_to_have = FALSE;
            break;
          }
        }
      }
      else {
        $expected_to_have_diff = DiffArray::diffAssocRecursive($config_action['target_config_expected_to_have'], $target_config_data);
        if (isset($expected_to_have_diff)
          && count($expected_to_have_diff) > 0) {

          $target_config_expected_to_have = FALSE;
        }
      }
    }
    else {
      $target_config_expected_to_have = TRUE;
    }

    return $target_config_expected_to_have;
  }

  /**
   * Check target config expected not to have.
   *
   * @param array $config_action
   *   The config action.
   * @param array $target_config_data
   *   The target config data.
   */
  protected function targetConfigExpectedNotToHave(array $config_action, array $target_config_data) {
    $target_config_expected_not_to_have = TRUE;

    if (isset($config_action['target_config_expected_not_to_have'])) {
      // Computes the difference of arrays with additional index check.
      // containing all the values from [target config expected NOT to
      // have] that are not present in [target config data] .
      // ----------------------------------------------------------------------.
      // Wild card exption not to have in all listed configs.
      if (isset($config_action['expected_config_wild_card'])) {
        $wild_card_configs = $this->configFactory->listAll($config_action['expected_config_wild_card']);
        foreach ($wild_card_configs as $wild_card_name) {
          $wild_card_factory = $this->configFactory->getEditable($wild_card_name);
          $wild_card_data = $wild_card_factory->get($config_action['target_config_path']);
          $wild_card_expected_not_to_have_diff = DiffArray::diffAssocRecursive($config_action['target_config_expected_not_to_have'], $wild_card_data);
          if (isset($wild_card_expected_not_to_have_diff)
            && count($wild_card_expected_not_to_have_diff) == 0) {

            $target_config_expected_not_to_have = FALSE;
            break;
          }
        }
      }
      else {
        $expected_not_to_have_diff = DiffArray::diffAssocRecursive($config_action['target_config_expected_not_to_have'], $target_config_data);
        if (isset($expected_not_to_have_diff)
          && count($expected_not_to_have_diff) == 0) {

          $target_config_expected_not_to_have = FALSE;
        }
      }
    }

    return $target_config_expected_not_to_have;
  }

  /**
   * Check target config expected to have index.
   *
   * @param array $config_action
   *   The config action.
   * @param array $target_config_data
   *   The target config data.
   */
  protected function targetConfigExpectedToHaveIndex(array $config_action, array $target_config_data) {
    if (isset($config_action['target_config_expected_to_have_index'])) {
      if (isset($target_config_data[$config_action['target_config_expected_to_have_index']])) {
        return TRUE;
      }
      else {
        return FALSE;
      }
    }

    return TRUE;
  }

  /**
   * Check target config expected not to have index.
   *
   * @param array $config_action
   *   The config action.
   * @param array $target_config_data
   *   The target config data.
   */
  protected function targetConfigExpectedNotToHaveIndex(array $config_action, array $target_config_data) {
    if (isset($config_action['target_config_expected_not_to_have_index'])) {
      if (!isset($target_config_data[$config_action['target_config_expected_not_to_have_index']])) {
        return TRUE;
      }
      else {
        return FALSE;
      }
    }

    return TRUE;
  }

  /**
   * Get Config Bit file.
   *
   * Load config bit file as an array, with full file name and path.
   *
   * @param string $config_bit_file_name
   *   Config bit file name in the root configbit folder.
   * @param string $type
   *   Config bit file source type (profile / module).
   * @param string $project
   *   Config bit file source eg. varbase.
   *
   * @return array|int
   *   array of config bit.
   *   FALSE if we do not have the config_bit in the config bit file.
   */
  public static function getConfigBit($config_bit_file_name, $type = 'profile', $project = 'varbase') {

    // Generate full path to config file.
    $full_config_bit_file_name = drupal_get_path($type, $project) . '/' . $config_bit_file_name;
    if (file_exists($full_config_bit_file_name)) {
      // Pars the config bit file and have it as an array if it was not.
      $config_bit_data = (array) Yaml::parse(file_get_contents($full_config_bit_file_name));
      if (isset($config_bit_data['config_bit'])) {
        return $config_bit_data['config_bit'];
      }
      else {
        return FALSE;
      }
    }
    else {
      throw new \Exception('Config bit file does not exist!');
    }
  }

  /**
   * Do we have this cofnigbit file.
   *
   * @param string $config_bit_file_name
   *   Config bit file name in the root configbit folder.
   * @param string $type
   *   Config bit file source type (profile / module).
   * @param string $project
   *   Config bit file source eg. varbase.
   *
   * @return boolan
   *   True/False if the file exists.
   */
  public static function doWeHaveThisConfigBit($config_bit_file_name, $type = 'profile', $project = 'varbase') {
    // Generate full path to config file.
    $full_config_bit_file_name = drupal_get_path($type, $project) . '/' . $config_bit_file_name;
    return file_exists($full_config_bit_file_name);
  }

  /**
   * Get a list of sub list of config.
   *
   * @param string $config_bit_file_name
   *   The Config bit file name in the root configbit folder.
   * @param string $condition_name
   *   The Condition name in the config bit file.
   * @param string|bool $condition_value
   *   The Condition value for the condition name in the config bit file.
   * @param string $sublist
   *   The Sub list item name to get a sub list of data. not all the list.
   * @param string $type
   *   The type of profile.
   * @param string $project
   *   The project.
   *
   * @return array
   *   Get List config as an array.
   */
  public static function getList($config_bit_file_name, $condition_name, $condition_value, $sublist = NULL, $type = 'profile', $project = 'varbase') {
    $config_bit_data = ConfigBit::getConfigBit($config_bit_file_name, $type, $project);

    if (isset($config_bit_data['type'])
        && $config_bit_data['type'] == 'list'
        && isset($config_bit_data['when'])
        && isset($config_bit_data['when'][$condition_name])
        && $config_bit_data['when'][$condition_name] == $condition_value
        && isset($config_bit_data['when']['list'])) {

      if (isset($sublist) && $sublist !== '') {
        return $config_bit_data['when']['list'][$sublist];
      }
      else {
        return $config_bit_data['when']['list'];
      }
    }
    else {
      return [];
    }
  }

  /**
   * Apply the action of archive files to the given config bit file.
   *
   * @param string $config_bit_file_name
   *   The Config bit file name in the root configbit folder.
   * @param string $condition_name
   *   The Condition name in the config bit file.
   * @param string|bool $condition_value
   *   The Condition value for the condition name in the config bit file.
   * @param string $type
   *   The type of profile.
   * @param string $project
   *   The project.
   */
  public static function actionArchiveFiles($config_bit_file_name, $condition_name, $condition_value, $type = 'profile', $project = 'varbase') {
    $config_bit_data = ConfigBit::getConfigBit($config_bit_file_name, $type, $project);

    if (isset($config_bit_data['type'])
        && $config_bit_data['type'] = 'action'
        && isset($config_bit_data['action'])
        && isset($config_bit_data['action']['archive_files'])
        && isset($config_bit_data['action']['archive_files']['when'])
        && isset($config_bit_data['action']['archive_files']['when'][$condition_name])
        && $config_bit_data['action']['archive_files']['when'][$condition_name] == $condition_value
        && isset($config_bit_data['action']['archive_files']['files'])) {

      foreach ($config_bit_data['action']['archive_files']['files'] as $language_config_file) {
        $config_file = drupal_get_path($type, $project) . '/' . $language_config_file;
        if (file_exists($config_file)) {
          $config_file_backup = $config_file . $config_bit_data['action']['archive_files']['archive_extensiton'];
          \Drupal::service('file_system')->move($config_file, $config_file_backup);
        }
      }
    }
  }

  /**
   * Apply the action of Un archive files to the given config bit file.
   *
   * @param string $config_bit_file_name
   *   Config bit file name in the root configbit folder.
   * @param string $condition_name
   *   Condition name in the config bit file.
   * @param string|bool $condition_value
   *   Condition value for the condition name in the config bit file.
   * @param string $type
   *   The type of profile.
   * @param string $project
   *   The project.
   */
  public static function actionUnArchiveFiles($config_bit_file_name, $condition_name, $condition_value, $type = 'profile', $project = 'varbase') {
    $config_bit_data = ConfigBit::getConfigBit($config_bit_file_name, $type, $project);
    if (isset($config_bit_data['type'])
        && $config_bit_data['type'] = 'action'
        && isset($config_bit_data['action'])
        && isset($config_bit_data['action']['unarchive_files'])
        && isset($config_bit_data['action']['unarchive_files']['when'])
        && isset($config_bit_data['action']['unarchive_files']['when'][$condition_name])
        && $config_bit_data['action']['unarchive_files']['when'][$condition_name] == $condition_value
        && isset($config_bit_data['action']['unarchive_files']['files'])) {

      foreach ($config_bit_data['action']['unarchive_files']['files'] as $language_config_file) {
        $config_file = drupal_get_path($type, $project) . '/' . $language_config_file;
        $config_file_backup = $config_file . $config_bit_data['action']['unarchive_files']['archive_extensiton'];
        if (!file_exists($config_file) && file_exists($config_file_backup)) {
          \Drupal::service('file_system')->move($config_file_backup, $config_file);
        }
      }
    }
  }

  /**
   * Apply the action of adding config bit in to the parent file.
   *
   * @param string $config_bit_file_name
   *   The Config bit file name in the root configbit folder.
   * @param string $condition_name
   *   The Condition name in the config bit file.
   * @param string|bool $condition_value
   *   The Condition value for the condition name in the config bit file.
   * @param string $target
   *   The Target item in the parent config file.
   * @param string $type
   *   The type of profile.
   * @param string $project
   *   The project.
   */
  public static function actionAdd($config_bit_file_name, $condition_name, $condition_value, $target, $type = 'profile', $project = 'varbase') {
    $config_bit_data = ConfigBit::getConfigBit($config_bit_file_name, $type, $project);

    if (isset($config_bit_data['type'])
        && $config_bit_data['type'] == 'action'
        && isset($config_bit_data['for'])
        && !empty($config_bit_data['for'])
        && file_exists(drupal_get_path($type, $project) . '/' . $config_bit_data['for'])
        && isset($config_bit_data['action'])
        && isset($config_bit_data['action']['add'])
        && isset($config_bit_data['action']['add']['when'])
        && isset($config_bit_data['action']['add']['when'][$condition_name])
        && $config_bit_data['action']['add']['when'][$condition_name] == $condition_value
        && isset($config_bit_data['action']['add']['target'])
        && $config_bit_data['action']['add']['target'] == $target
        && isset($config_bit_data['action']['add'][$target])) {

      $config_target_data = Yaml::parse(file_get_contents(drupal_get_path($type, $project) . '/' . $config_bit_data['for']));

      $configs_to_add = $config_bit_data['action']['add'][$target];
      foreach ($configs_to_add as $config_to_add) {
        if (!in_array($config_to_add, $config_target_data[$target])) {
          $config_target_data[$target][] = (string) $config_to_add;
        }
      }

      // Dump the array to string of Yaml format.
      $updated_config_target = Yaml::dump($config_target_data, 2, 2);

      // Save the updated config to the target file.
      file_put_contents(drupal_get_path($type, $project) . '/' . $config_bit_data['for'], $updated_config_target);

    }
  }

  /**
   * Apply the action of removing config bit from the parent file.
   *
   * @param string $config_bit_file_name
   *   The Config bit file name in the root configbit folder.
   * @param string $condition_name
   *   The Condition name in the config bit file.
   * @param string|bool $condition_value
   *   The Condition value for the condition name in the config bit file.
   * @param string $target
   *   The Target item in the parent config file.
   * @param string $type
   *   The type of profile.
   * @param string $project
   *   The project.
   */
  public static function actionRemove($config_bit_file_name, $condition_name, $condition_value, $target, $type = 'profile', $project = 'varbase') {
    $config_bit_data = ConfigBit::getConfigBit($config_bit_file_name, $type, $project);

    if (isset($config_bit_data['type'])
        && $config_bit_data['type'] == 'action'
        && isset($config_bit_data['for'])
        && $config_bit_data['for'] !== ''
        && file_exists(drupal_get_path($type, $project) . '/' . $config_bit_data['for'])
        && isset($config_bit_data['action'])
        && isset($config_bit_data['action']['remove'])
        && isset($config_bit_data['action']['remove']['when'])
        && isset($config_bit_data['action']['remove']['when'][$condition_name])
        && $config_bit_data['action']['remove']['when'][$condition_name] == $condition_value
        && isset($config_bit_data['action']['remove']['target'])
        && $config_bit_data['action']['remove']['target'] == $target
        && isset($config_bit_data['action']['remove'][$target])) {

      // Read the Yaml config file. which this config bit for.
      $config_target_data = Yaml::parse(file_get_contents(drupal_get_path($type, $project) . '/' . $config_bit_data['for']));

      $configs_to_remove = $config_bit_data['action']['remove'][$target];
      foreach ($configs_to_remove as $config_to_remove) {
        $config_to_remove_key = array_search((string) $config_to_remove, $config_target_data[$target], TRUE);
        if ($config_to_remove_key !== FALSE) {
          unset($config_target_data[$target][$config_to_remove_key]);
        }
      }

      // Save the updated config to the target file.
      $updated_config_target = Yaml::dump($config_target_data, 2, 2);

      // Save the updated config to the target file.
      file_put_contents(drupal_get_path($type, $project) . '/' . $config_bit_data['for'], $updated_config_target);
    }
  }

}
