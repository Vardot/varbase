<?php
/**
 * @file
 * varbase_homepage_panel.strongarm.inc
 */

/**
 * Implements hook_strongarm().
 */
function varbase_homepage_panel_strongarm() {
  $export = array();

  $strongarm = new stdClass();
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'site_frontpage';
  $strongarm->value = 'home';
  $export['site_frontpage'] = $strongarm;

  return $export;
}
