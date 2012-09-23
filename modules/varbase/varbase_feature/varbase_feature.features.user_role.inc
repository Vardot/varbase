<?php
/**
 * @file
 * varbase_feature.features.user_role.inc
 */

/**
 * Implements hook_user_default_roles().
 */
function varbase_feature_user_default_roles() {
  $roles = array();

  // Exported role: administrator.
  $roles['administrator'] = array(
    'name' => 'administrator',
    'weight' => '4',
  );

  // Exported role: content manager.
  $roles['content manager'] = array(
    'name' => 'content manager',
    'weight' => '2',
  );

  // Exported role: site manager.
  $roles['site manager'] = array(
    'name' => 'site manager',
    'weight' => '3',
  );

  return $roles;
}
