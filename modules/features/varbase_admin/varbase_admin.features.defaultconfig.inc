<?php
/**
 * @file
 * varbase_admin.features.defaultconfig.inc
 */

/**
 * Implements hook_defaultconfig_features().
 */
function varbase_admin_defaultconfig_features() {
  return array(
    'varbase_admin' => array(
      'user_default_permissions' => 'user_default_permissions',
    ),
  );
}

/**
 * Implements hook_defaultconfig_user_default_permissions().
 */
function varbase_admin_defaultconfig_user_default_permissions() {
  $permissions = array();

  // Exported permission: 'access fieldable pane overview'.
  $permissions['access fieldable pane overview'] = array(
    'name' => 'access fieldable pane overview',
    'roles' => array(
      'Content Admin' => 'Content Admin',
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'varbase_admin',
  );

  return $permissions;
}
