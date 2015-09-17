<?php
/**
 * @file
 * varbase_core.features.inc
 */

/**
 * Implements hook_ctools_plugin_api().
 */
function varbase_core_ctools_plugin_api($module = NULL, $api = NULL) {
  if ($module == "strongarm" && $api == "strongarm") {
    return array("version" => "1");
  }
}
