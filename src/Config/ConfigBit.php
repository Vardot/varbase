<?php

namespace Drupal\varbase\config;

use Symfony\Component\Yaml\Yaml;

/**
 * Defines config bit to help in managing custom config which used in install.
 */
class ConfigBit {

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
   *   Config bit file name in the root configbit folder.
   * @param string $condition_name
   *   Condition name in the config bit file.
   * @param string|bool $condition_value
   *   Condition value for the condition name in the config bit file.
   * @param string $sublist
   *   Sub list item name to get a sub list of data. not all the list.
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
      return array();
    }
  }

  /**
   * Applay the action of archive files to the given config bit file.
   *
   * @param string $config_bit_file_name
   *   Config bit file name in the root configbit folder.
   * @param string $condition_name
   *   Condition name in the config bit file.
   * @param string|bool $condition_value
   *   Condition value for the condition name in the config bit file.
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
          file_unmanaged_move($config_file, $config_file_backup);
        }
      }
    }
  }

  /**
   * Applay the action of Un archive files to the given config bit file.
   *
   * @param string $config_bit_file_name
   *   Config bit file name in the root configbit folder.
   * @param string $condition_name
   *   Condition name in the config bit file.
   * @param string|bool $condition_value
   *   Condition value for the condition name in the config bit file.
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
          file_unmanaged_move($config_file_backup, $config_file);
        }
      }
    }
  }

  /**
   * Applay the action of adding config bit in to the parent file.
   *
   * @param string $config_bit_file_name
   *   Config bit file name in the root configbit folder.
   * @param string $condition_name
   *   Condition name in the config bit file.
   * @param string|bool $condition_value
   *   Condition value for the condition name in the config bit file.
   * @param string $target
   *   Targent item in the parent config file.
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
   * Applay the action of removing config bit from the parent file.
   *
   * @param string $config_bit_file_name
   *   Config bit file name in the root configbit folder.
   * @param string $condition_name
   *   Condition name in the config bit file.
   * @param string|bool $condition_value
   *   Condition value for the condition name in the config bit file.
   * @param string $target
   *   Targent item in the parent config file.
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
