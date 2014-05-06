<?php
/**
 * @file
 * varbase_base.bean.inc
 */

/**
 * Implements hook_bean_admin_ui_types().
 */
function varbase_base_bean_admin_ui_types() {
  $export = array();

  $bean_type = new stdClass();
  $bean_type->disabled = FALSE; /* Edit this to true to make a default bean_type disabled initially */
  $bean_type->api_version = 5;
  $bean_type->name = 'html_block';
  $bean_type->label = 'HTML Block';
  $bean_type->options = '';
  $bean_type->description = '';
  $export['html_block'] = $bean_type;

  return $export;
}
