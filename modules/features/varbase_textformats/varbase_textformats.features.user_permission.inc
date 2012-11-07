<?php
/**
 * @file
 * varbase_textformats.features.user_permission.inc
 */

/**
 * Implements hook_user_default_permissions().
 */
function varbase_textformats_user_default_permissions() {
  $permissions = array();

  // Exported permission: use text format visual_editor.
  $permissions['use text format visual_editor'] = array(
    'name' => 'use text format visual_editor',
    'roles' => array(
      0 => 'Content admin',
      1 => 'Site admin',
      2 => 'Super admin',
    ),
    'module' => 'filter',
  );

  return $permissions;
}
