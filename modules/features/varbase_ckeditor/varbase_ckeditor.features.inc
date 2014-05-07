<?php
/**
 * @file
 * varbase_ckeditor.features.inc
 */

/**
 * Implements hook_ctools_plugin_api().
 */
function varbase_ckeditor_ctools_plugin_api($module = NULL, $api = NULL) {
  if ($module == "linkit" && $api == "linkit_profiles") {
    return array("version" => "1");
  }
}
