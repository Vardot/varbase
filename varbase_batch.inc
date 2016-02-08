<?php

function _varbase_install_finished_batch_finished() {
  // Finally go to homepage if not running in drush
  if (!drupal_is_cli()) {
    drupal_goto('<front>');
  }
}

function _varbase_installer_install($module, $module_name, &$context) {
  module_enable(array($module), FALSE);
  $context['message'] = st('Installed %module module.', array('%module' => $module_name));
}

function _varbase_install_rebuild_features_keys(&$context) {
  // Clear & rebuild Features key caches.
  features_get_info(NULL, NULL, TRUE);
}

function _varbase_install_rebuild_features_defaultconfig_rebuild(&$context) {
  // Rebuild (revert) all defaultconfig in features.
  defaultconfig_rebuild_all();
}

function _varbase_install_rebuild_features_all(&$context) {
  // Rebuild features to check missing or overriden config is detected.
  features_rebuild();

  // Revert all Features (cleanup install).
  features_revert();
}

function _varbase_install_drupal_cc_all(&$context) {
  // Rebuild node access permissions.
  node_access_rebuild(FALSE);

  // Flush all cache
  drupal_flush_all_caches();

  // Force rebuild a new schema
  drupal_get_schema(NULL, TRUE);

  //Run cron
  drupal_cron_run();

  // Remove any messages set by enabled modules.
  // @todo check if there is no errors (really).
  drupal_get_messages(NULL, TRUE);
}

