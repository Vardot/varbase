<?php

/**
 * @file
 * Plugin to handle the 'page' content type which allows the standard page
 * template variables to be embedded into a panel.
 */

$plugin = array(
  'title' => t('Region Pane'),
  'description' => t('Get the content of an entire region'),
  'single' => TRUE,
  'content_types' => array('region_pane_content_type'),
  'render callback' => 'varbase_magic_content_type_render',
  'edit form' => 'varbase_magic_content_type_edit_form',
  'category' => t('Page elements'),
  'admin title' => 'varbase_magic_content_type_admin_title',
  'render last' => TRUE,
);

/**
 * Output function for the 'region_pane' content type.
 *
 */
function varbase_magic_content_type_render($subtype, $conf, $panel_args) {
  $region = $conf['config_item_region_pane_selected_region'];

  /* Save blocks before block_get_blocks_by_region to not corrupt any
   * module using hook_block_list_alter.
   */
  $save_blocks = drupal_static('block_list');

  $region_content = block_get_blocks_by_region($region);
  if ($plugin = context_get_plugin('reaction', 'block')) {
    $region_content = array_merge($plugin->block_get_blocks_by_region($region), $region_content);
  }

  // restore blocks array to the previous state
  $blocks = &drupal_static('block_list');
  $blocks = $save_blocks;

  $block = new stdClass();
  $block->content = $region_content;
  return $block;
}

/**
 * 'Edit form' callback for the content type.
 *
 */
function varbase_magic_content_type_edit_form($form, &$form_state) {
  $settings = $form_state['conf'];
  $theme_default = variable_get('theme_default');
  $regions_list = system_region_list($theme_default);

  $form['config_item_region_pane_selected_region'] = array(
    '#type' => 'select',
    '#default_value' => (isset($settings['config_item_region_pane_selected_region'])) ? $settings['config_item_region_pane_selected_region'] : '',
    '#title' => t('Region List'),
    '#options' => $regions_list,
  );
  return $form;
}

/**
 * Submit function, note anything in the formstate[conf] automatically gets saved
 */
function varbase_magic_content_type_edit_form_submit(&$form, &$form_state) {
  $form_state['conf']['config_item_region_pane_selected_region'] = $form_state['values']['config_item_region_pane_selected_region'];
}

/**
 * Callback to provide the administrative title of region_pane content type.
 */
function varbase_magic_content_type_admin_title($subtype, $conf) {
  $output = t('Region Pane');
  if (!empty($conf['config_item_region_pane_selected_region'])) {
    $output .= ' : ' . t($conf['config_item_region_pane_selected_region']);
  }
  return $output;
}
