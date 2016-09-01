<?php
/**
 * @file
 * varbase_landing.features.user_permission.inc
 */

/**
 * Implements hook_user_default_permissions().
 */
function varbase_landing_user_default_permissions() {
  $permissions = array();

  // Exported permission: 'administer panelizer node landing_page content'.
  $permissions['administer panelizer node landing_page content'] = array(
    'name' => 'administer panelizer node landing_page content',
    'roles' => array(
      'Content Admin' => 'Content Admin',
      'Editor' => 'Editor',
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'panelizer',
  );

  // Exported permission: 'administer panelizer node landing_page context'.
  $permissions['administer panelizer node landing_page context'] = array(
    'name' => 'administer panelizer node landing_page context',
    'roles' => array(
      'Content Admin' => 'Content Admin',
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'panelizer',
  );

  // Exported permission: 'administer panelizer node landing_page defaults'.
  $permissions['administer panelizer node landing_page defaults'] = array(
    'name' => 'administer panelizer node landing_page defaults',
    'roles' => array(
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'panelizer',
  );

  // Exported permission: 'administer panelizer node landing_page layout'.
  $permissions['administer panelizer node landing_page layout'] = array(
    'name' => 'administer panelizer node landing_page layout',
    'roles' => array(
      'Content Admin' => 'Content Admin',
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'panelizer',
  );

  // Exported permission: 'administer panelizer node landing_page overview'.
  $permissions['administer panelizer node landing_page overview'] = array(
    'name' => 'administer panelizer node landing_page overview',
    'roles' => array(
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'panelizer',
  );

  // Exported permission: 'administer panelizer node landing_page settings'.
  $permissions['administer panelizer node landing_page settings'] = array(
    'name' => 'administer panelizer node landing_page settings',
    'roles' => array(
      'Content Admin' => 'Content Admin',
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'panelizer',
  );

  // Exported permission: 'create landing_page content'.
  $permissions['create landing_page content'] = array(
    'name' => 'create landing_page content',
    'roles' => array(
      'Content Admin' => 'Content Admin',
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'node',
  );

  // Exported permission: 'delete any landing_page content'.
  $permissions['delete any landing_page content'] = array(
    'name' => 'delete any landing_page content',
    'roles' => array(
      'Content Admin' => 'Content Admin',
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'node',
  );

  // Exported permission: 'delete own landing_page content'.
  $permissions['delete own landing_page content'] = array(
    'name' => 'delete own landing_page content',
    'roles' => array(
      'Content Admin' => 'Content Admin',
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'node',
  );

  // Exported permission: 'edit any landing_page content'.
  $permissions['edit any landing_page content'] = array(
    'name' => 'edit any landing_page content',
    'roles' => array(
      'Content Admin' => 'Content Admin',
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'node',
  );

  // Exported permission: 'edit own landing_page content'.
  $permissions['edit own landing_page content'] = array(
    'name' => 'edit own landing_page content',
    'roles' => array(
      'Content Admin' => 'Content Admin',
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'node',
  );

  // Exported permission: 'enter landing_page revision log entry'.
  $permissions['enter landing_page revision log entry'] = array(
    'name' => 'enter landing_page revision log entry',
    'roles' => array(
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'override_node_options',
  );

  // Exported permission: 'override landing_page authored by option'.
  $permissions['override landing_page authored by option'] = array(
    'name' => 'override landing_page authored by option',
    'roles' => array(
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'override_node_options',
  );

  // Exported permission: 'override landing_page authored on option'.
  $permissions['override landing_page authored on option'] = array(
    'name' => 'override landing_page authored on option',
    'roles' => array(
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'override_node_options',
  );

  // Exported permission: 'override landing_page promote to front page option'.
  $permissions['override landing_page promote to front page option'] = array(
    'name' => 'override landing_page promote to front page option',
    'roles' => array(
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'override_node_options',
  );

  // Exported permission: 'override landing_page published option'.
  $permissions['override landing_page published option'] = array(
    'name' => 'override landing_page published option',
    'roles' => array(
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'override_node_options',
  );

  // Exported permission: 'override landing_page revision option'.
  $permissions['override landing_page revision option'] = array(
    'name' => 'override landing_page revision option',
    'roles' => array(
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'override_node_options',
  );

  // Exported permission: 'override landing_page sticky option'.
  $permissions['override landing_page sticky option'] = array(
    'name' => 'override landing_page sticky option',
    'roles' => array(
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'override_node_options',
  );

  return $permissions;
}
