<?php
/**
 * @file
 * varbase_ckeditor.features.user_permission.inc
 */

/**
 * Implements hook_user_default_permissions().
 */
function varbase_ckeditor_user_default_permissions() {
  $permissions = array();

  // Exported permission: 'use text format raw_html'.
  $permissions['use text format raw_html'] = array(
    'name' => 'use text format raw_html',
    'roles' => array(
      'Content admin' => 'Content admin',
      'Site admin' => 'Site admin',
      'Super admin' => 'Super admin',
    ),
    'module' => 'filter',
  );

  // Exported permission: 'use text format visual_editor'.
  $permissions['use text format visual_editor'] = array(
    'name' => 'use text format visual_editor',
    'roles' => array(
      'Content admin' => 'Content admin',
      'Site admin' => 'Site admin',
      'Super admin' => 'Super admin',
    ),
    'module' => 'filter',
  );

  return $permissions;
}
