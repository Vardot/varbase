<?php
/**
 * @file
 * varbase_default_settings.ds.inc
 */

/**
 * Implements hook_ds_view_modes_info().
 */
function varbase_default_settings_ds_view_modes_info() {
  $export = array();

  $ds_view_mode = new stdClass();
  $ds_view_mode->api_version = 1;
  $ds_view_mode->view_mode = 'varbase_full_screen';
  $ds_view_mode->label = 'Full screen';
  $ds_view_mode->entities = array(
    'fieldable_panels_pane' => 'fieldable_panels_pane',
  );
  $export['varbase_full_screen'] = $ds_view_mode;

  return $export;
}
