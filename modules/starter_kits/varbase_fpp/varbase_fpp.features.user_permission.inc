<?php
/**
 * @file
 * varbase_fpp.features.user_permission.inc
 */

/**
 * Implements hook_user_default_permissions().
 */
function varbase_fpp_user_default_permissions() {
  $permissions = array();

  // Exported permission: 'administer fieldable panels panes'.
  $permissions['administer fieldable panels panes'] = array(
    'name' => 'administer fieldable panels panes',
    'roles' => array(
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'fieldable_panels_panes',
  );

  // Exported permission: 'administer flexslider'.
  $permissions['administer flexslider'] = array(
    'name' => 'administer flexslider',
    'roles' => array(),
    'module' => 'flexslider',
  );

  // Exported permission: 'create fieldable raw_html'.
  $permissions['create fieldable raw_html'] = array(
    'name' => 'create fieldable raw_html',
    'roles' => array(
      'Content Admin' => 'Content Admin',
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'fieldable_panels_panes',
  );

  // Exported permission: 'create fieldable slideshow'.
  $permissions['create fieldable slideshow'] = array(
    'name' => 'create fieldable slideshow',
    'roles' => array(
      'Content Admin' => 'Content Admin',
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'fieldable_panels_panes',
  );

  // Exported permission: 'create fieldable wysiwyg'.
  $permissions['create fieldable wysiwyg'] = array(
    'name' => 'create fieldable wysiwyg',
    'roles' => array(
      'Content Admin' => 'Content Admin',
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'fieldable_panels_panes',
  );

  // Exported permission: 'delete fieldable raw_html'.
  $permissions['delete fieldable raw_html'] = array(
    'name' => 'delete fieldable raw_html',
    'roles' => array(
      'Content Admin' => 'Content Admin',
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'fieldable_panels_panes',
  );

  // Exported permission: 'delete fieldable slideshow'.
  $permissions['delete fieldable slideshow'] = array(
    'name' => 'delete fieldable slideshow',
    'roles' => array(
      'Content Admin' => 'Content Admin',
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'fieldable_panels_panes',
  );

  // Exported permission: 'delete fieldable wysiwyg'.
  $permissions['delete fieldable wysiwyg'] = array(
    'name' => 'delete fieldable wysiwyg',
    'roles' => array(
      'Content Admin' => 'Content Admin',
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'fieldable_panels_panes',
  );

  // Exported permission: 'edit fieldable raw_html'.
  $permissions['edit fieldable raw_html'] = array(
    'name' => 'edit fieldable raw_html',
    'roles' => array(
      'Content Admin' => 'Content Admin',
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'fieldable_panels_panes',
  );

  // Exported permission: 'edit fieldable slideshow'.
  $permissions['edit fieldable slideshow'] = array(
    'name' => 'edit fieldable slideshow',
    'roles' => array(
      'Content Admin' => 'Content Admin',
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'fieldable_panels_panes',
  );

  // Exported permission: 'edit fieldable wysiwyg'.
  $permissions['edit fieldable wysiwyg'] = array(
    'name' => 'edit fieldable wysiwyg',
    'roles' => array(
      'Content Admin' => 'Content Admin',
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'fieldable_panels_panes',
  );

  // Exported permission: 'show format selection for fieldable_panels_pane'.
  $permissions['show format selection for fieldable_panels_pane'] = array(
    'name' => 'show format selection for fieldable_panels_pane',
    'roles' => array(),
    'module' => 'better_formats',
  );

  // Exported permission: 'use media wysiwyg'.
  $permissions['use media wysiwyg'] = array(
    'name' => 'use media wysiwyg',
    'roles' => array(
      'Content Admin' => 'Content Admin',
      'Editor' => 'Editor',
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'media_wysiwyg',
  );

  return $permissions;
}
