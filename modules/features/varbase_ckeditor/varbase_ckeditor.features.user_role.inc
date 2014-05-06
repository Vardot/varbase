<?php
/**
 * @file
 * varbase_ckeditor.features.user_role.inc
 */

/**
 * Implements hook_user_default_roles().
 */
function varbase_ckeditor_user_default_roles() {
  $roles = array();

  // Exported role: Content admin.
  $roles['Content admin'] = array(
    'name' => 'Content admin',
    'weight' => 2,
  );

  // Exported role: Site admin.
  $roles['Site admin'] = array(
    'name' => 'Site admin',
    'weight' => 3,
  );

  // Exported role: Super admin.
  $roles['Super admin'] = array(
    'name' => 'Super admin',
    'weight' => 4,
  );

  return $roles;
}
