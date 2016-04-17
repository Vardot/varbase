<?php
/**
 * @file
 * varbase_hero_slider.features.user_permission.inc
 */

/**
 * Implements hook_user_default_permissions().
 */
function varbase_hero_slider_user_default_permissions() {
  $permissions = array();

  // Exported permission: 'administer panelizer node varbase_hero_slider defaults'.
  $permissions['administer panelizer node varbase_hero_slider defaults'] = array(
    'name' => 'administer panelizer node varbase_hero_slider defaults',
    'roles' => array(),
    'module' => 'panelizer',
  );

  // Exported permission: 'create varbase_hero_slider content'.
  $permissions['create varbase_hero_slider content'] = array(
    'name' => 'create varbase_hero_slider content',
    'roles' => array(),
    'module' => 'node',
  );

  // Exported permission: 'delete any varbase_hero_slider content'.
  $permissions['delete any varbase_hero_slider content'] = array(
    'name' => 'delete any varbase_hero_slider content',
    'roles' => array(),
    'module' => 'node',
  );

  // Exported permission: 'delete own varbase_hero_slider content'.
  $permissions['delete own varbase_hero_slider content'] = array(
    'name' => 'delete own varbase_hero_slider content',
    'roles' => array(),
    'module' => 'node',
  );

  // Exported permission: 'edit any varbase_hero_slider content'.
  $permissions['edit any varbase_hero_slider content'] = array(
    'name' => 'edit any varbase_hero_slider content',
    'roles' => array(),
    'module' => 'node',
  );

  // Exported permission: 'edit own varbase_hero_slider content'.
  $permissions['edit own varbase_hero_slider content'] = array(
    'name' => 'edit own varbase_hero_slider content',
    'roles' => array(),
    'module' => 'node',
  );

  // Exported permission: 'enter varbase_hero_slider revision log entry'.
  $permissions['enter varbase_hero_slider revision log entry'] = array(
    'name' => 'enter varbase_hero_slider revision log entry',
    'roles' => array(),
    'module' => 'override_node_options',
  );

  // Exported permission: 'override varbase_hero_slider authored by option'.
  $permissions['override varbase_hero_slider authored by option'] = array(
    'name' => 'override varbase_hero_slider authored by option',
    'roles' => array(),
    'module' => 'override_node_options',
  );

  // Exported permission: 'override varbase_hero_slider authored on option'.
  $permissions['override varbase_hero_slider authored on option'] = array(
    'name' => 'override varbase_hero_slider authored on option',
    'roles' => array(),
    'module' => 'override_node_options',
  );

  // Exported permission: 'override varbase_hero_slider promote to front page option'.
  $permissions['override varbase_hero_slider promote to front page option'] = array(
    'name' => 'override varbase_hero_slider promote to front page option',
    'roles' => array(),
    'module' => 'override_node_options',
  );

  // Exported permission: 'override varbase_hero_slider published option'.
  $permissions['override varbase_hero_slider published option'] = array(
    'name' => 'override varbase_hero_slider published option',
    'roles' => array(),
    'module' => 'override_node_options',
  );

  // Exported permission: 'override varbase_hero_slider revision option'.
  $permissions['override varbase_hero_slider revision option'] = array(
    'name' => 'override varbase_hero_slider revision option',
    'roles' => array(),
    'module' => 'override_node_options',
  );

  // Exported permission: 'override varbase_hero_slider sticky option'.
  $permissions['override varbase_hero_slider sticky option'] = array(
    'name' => 'override varbase_hero_slider sticky option',
    'roles' => array(),
    'module' => 'override_node_options',
  );

  return $permissions;
}
