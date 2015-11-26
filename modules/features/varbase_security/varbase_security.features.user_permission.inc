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

  // Exported permission: 'access all views'.
  $permissions['access all views'] = array(
    'name' => 'access all views',
    'roles' => array(
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'views',
  );

  // Exported permission: 'access security review list'.
  $permissions['access security review list'] = array(
    'name' => 'access security review list',
    'roles' => array(
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'security_review',
  );

  // Exported permission: 'administer password policy'.
  $permissions['administer password policy'] = array(
    'name' => 'administer password policy',
    'roles' => array(
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'password_policy',
  );

  // Exported permission: 'administer seckit'.
  $permissions['administer seckit'] = array(
    'name' => 'administer seckit',
    'roles' => array(
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'seckit',
  );

  // Exported permission: 'run security checks'.
  $permissions['run security checks'] = array(
    'name' => 'run security checks',
    'roles' => array(
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'security_review',
  );

  // Exported permission: 'upload archive'.
  $permissions['upload archive'] = array(
    'name' => 'upload archive',
    'roles' => array(),
    'module' => 'file_entity',
  );

  return $permissions;
}
