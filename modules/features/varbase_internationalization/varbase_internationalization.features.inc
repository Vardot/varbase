<?php
/**
 * @file
 * varbase_internationalization.features.inc
 */

/**
 * Implements hook_ctools_plugin_api().
 */
function varbase_internationalization_ctools_plugin_api($module = NULL, $api = NULL) {
  if ($module == "strongarm" && $api == "strongarm") {
    return array("version" => "1");
  }
}
