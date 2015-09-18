<?php

/**
 * Verifies extra requirements for installing Varbase installation profile.
 *
 * @param $install_state
 *   An array of information about the current installation state.
 */
function varbase_verify_requirments($install_state) {
  $requirements = array();
  $conf_path = './' . conf_path(FALSE, TRUE);
  $varbase_settings_file = $conf_path . '/varbase.settings.inc';

  // If default.varbase.settings.inc does not exist
  if (!drupal_verify_install_file($varbase_settings_file, FILE_EXIST | FILE_READABLE)) {
    $requirements ['varbase settings file exists'] = array(
      'title' => st('Varbase settings file'),
      'value' => st('The varbase.settings.inc file does not exist.'),
      'severity' => REQUIREMENT_WARNING,
      'description' => st('The @drupal installer requires that you create a varbase.settings.inc file as part of the installation process. More details about installing Drupal are available in <a href="@install_documentation"> installation documentation</a>.', array('@drupal' => drupal_install_profile_distribution_name(),  '@install_documentation' => 'http://www.drupal.org/node/2570843')),
    );
  }

  return $requirements;
}
