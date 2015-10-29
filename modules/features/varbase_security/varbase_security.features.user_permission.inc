<?php
/**
 * @file
 * varbase_security.features.user_permission.inc
 */

/**
 * Implements hook_user_default_permissions().
 */
function varbase_security_user_default_permissions() {
  $permissions = array();

  // Exported permission: 'access security review list'.
  $permissions['access security review list'] = array(
    'name' => 'access security review list',
    'roles' => array(),
    'module' => 'security_review',
  );

  // Exported permission: 'administer seckit'.
  $permissions['administer seckit'] = array(
    'name' => 'administer seckit',
    'roles' => array(),
    'module' => 'seckit',
  );

  // Exported permission: 'run security checks'.
  $permissions['run security checks'] = array(
    'name' => 'run security checks',
    'roles' => array(),
    'module' => 'security_review',
  );

  return $permissions;
}
