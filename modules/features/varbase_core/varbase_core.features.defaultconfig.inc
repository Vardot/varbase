<?php
/**
 * @file
 * varbase_core.features.defaultconfig.inc
 */

/**
 * Implements hook_defaultconfig_features().
 */
function varbase_core_defaultconfig_features() {
  return array(
    'varbase_core' => array(
      'user_default_permissions' => 'user_default_permissions',
      'user_default_roles' => 'user_default_roles',
    ),
  );
}

/**
 * Implements hook_defaultconfig_user_default_permissions().
 */
function varbase_core_defaultconfig_user_default_permissions() {
  $permissions = array();

  // Exported permission: 'access content'.
  $permissions['access content'] = array(
    'name' => 'access content',
    'roles' => array(
      'Content Admin' => 'Content Admin',
      'Editor' => 'Editor',
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
      'anonymous user' => 'anonymous user',
      'authenticated user' => 'authenticated user',
    ),
    'module' => 'node',
  );

  // Exported permission: 'access content overview'.
  $permissions['access content overview'] = array(
    'name' => 'access content overview',
    'roles' => array(
      'Content Admin' => 'Content Admin',
      'Editor' => 'Editor',
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'node',
  );

  // Exported permission: 'access contextual links'.
  $permissions['access contextual links'] = array(
    'name' => 'access contextual links',
    'roles' => array(),
    'module' => 'contextual',
  );

  // Exported permission: 'access user profiles'.
  $permissions['access user profiles'] = array(
    'name' => 'access user profiles',
    'roles' => array(
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'user',
  );

  // Exported permission: 'administer block classes'.
  $permissions['administer block classes'] = array(
    'name' => 'administer block classes',
    'roles' => array(),
    'module' => 'block_class',
  );

  // Exported permission: 'administer blocks'.
  $permissions['administer blocks'] = array(
    'name' => 'administer blocks',
    'roles' => array(),
    'module' => 'block',
  );

  // Exported permission: 'administer clean-urls'.
  $permissions['administer clean-urls'] = array(
    'name' => 'administer clean-urls',
    'roles' => array(),
    'module' => 'config_perms',
  );

  // Exported permission: 'administer content types'.
  $permissions['administer content types'] = array(
    'name' => 'administer content types',
    'roles' => array(
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'node',
  );

  // Exported permission: 'administer custom permissions'.
  $permissions['administer custom permissions'] = array(
    'name' => 'administer custom permissions',
    'roles' => array(),
    'module' => 'config_perms',
  );

  // Exported permission: 'administer date-time'.
  $permissions['administer date-time'] = array(
    'name' => 'administer date-time',
    'roles' => array(),
    'module' => 'config_perms',
  );

  // Exported permission: 'administer error reporting'.
  $permissions['administer error reporting'] = array(
    'name' => 'administer error reporting',
    'roles' => array(),
    'module' => 'config_perms',
  );

  // Exported permission: 'administer file system'.
  $permissions['administer file system'] = array(
    'name' => 'administer file system',
    'roles' => array(),
    'module' => 'config_perms',
  );

  // Exported permission: 'administer file types'.
  $permissions['administer file types'] = array(
    'name' => 'administer file types',
    'roles' => array(
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'file_entity',
  );

  // Exported permission: 'administer files'.
  $permissions['administer files'] = array(
    'name' => 'administer files',
    'roles' => array(
      'Content Admin' => 'Content Admin',
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'file_entity',
  );

  // Exported permission: 'administer menu'.
  $permissions['administer menu'] = array(
    'name' => 'administer menu',
    'roles' => array(
      'Content Admin' => 'Content Admin',
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'menu',
  );

  // Exported permission: 'administer modules'.
  $permissions['administer modules'] = array(
    'name' => 'administer modules',
    'roles' => array(),
    'module' => 'system',
  );

  // Exported permission: 'administer nodes'.
  $permissions['administer nodes'] = array(
    'name' => 'administer nodes',
    'roles' => array(
      'Content Admin' => 'Content Admin',
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'node',
  );

  // Exported permission: 'administer performance'.
  $permissions['administer performance'] = array(
    'name' => 'administer performance',
    'roles' => array(),
    'module' => 'config_perms',
  );

  // Exported permission: 'administer site information'.
  $permissions['administer site information'] = array(
    'name' => 'administer site information',
    'roles' => array(),
    'module' => 'config_perms',
  );

  // Exported permission: 'administer site maintenance'.
  $permissions['administer site maintenance'] = array(
    'name' => 'administer site maintenance',
    'roles' => array(),
    'module' => 'config_perms',
  );

  // Exported permission: 'bypass file access'.
  $permissions['bypass file access'] = array(
    'name' => 'bypass file access',
    'roles' => array(
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'file_entity',
  );

  // Exported permission: 'bypass node access'.
  $permissions['bypass node access'] = array(
    'name' => 'bypass node access',
    'roles' => array(
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'node',
  );

  // Exported permission: 'create files'.
  $permissions['create files'] = array(
    'name' => 'create files',
    'roles' => array(
      'Content Admin' => 'Content Admin',
      'Editor' => 'Editor',
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'file_entity',
  );

  // Exported permission: 'delete any audio files'.
  $permissions['delete any audio files'] = array(
    'name' => 'delete any audio files',
    'roles' => array(
      'Content Admin' => 'Content Admin',
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'file_entity',
  );

  // Exported permission: 'delete any document files'.
  $permissions['delete any document files'] = array(
    'name' => 'delete any document files',
    'roles' => array(
      'Content Admin' => 'Content Admin',
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'file_entity',
  );

  // Exported permission: 'delete any image files'.
  $permissions['delete any image files'] = array(
    'name' => 'delete any image files',
    'roles' => array(
      'Content Admin' => 'Content Admin',
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'file_entity',
  );

  // Exported permission: 'delete any video files'.
  $permissions['delete any video files'] = array(
    'name' => 'delete any video files',
    'roles' => array(
      'Content Admin' => 'Content Admin',
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'file_entity',
  );

  // Exported permission: 'delete own audio files'.
  $permissions['delete own audio files'] = array(
    'name' => 'delete own audio files',
    'roles' => array(
      'Content Admin' => 'Content Admin',
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'file_entity',
  );

  // Exported permission: 'delete own document files'.
  $permissions['delete own document files'] = array(
    'name' => 'delete own document files',
    'roles' => array(
      'Content Admin' => 'Content Admin',
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'file_entity',
  );

  // Exported permission: 'delete own image files'.
  $permissions['delete own image files'] = array(
    'name' => 'delete own image files',
    'roles' => array(
      'Content Admin' => 'Content Admin',
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'file_entity',
  );

  // Exported permission: 'delete own video files'.
  $permissions['delete own video files'] = array(
    'name' => 'delete own video files',
    'roles' => array(
      'Content Admin' => 'Content Admin',
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'file_entity',
  );

  // Exported permission: 'delete revisions'.
  $permissions['delete revisions'] = array(
    'name' => 'delete revisions',
    'roles' => array(
      'Content Admin' => 'Content Admin',
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'node',
  );

  // Exported permission: 'download any audio files'.
  $permissions['download any audio files'] = array(
    'name' => 'download any audio files',
    'roles' => array(
      'Content Admin' => 'Content Admin',
      'Editor' => 'Editor',
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'file_entity',
  );

  // Exported permission: 'download any document files'.
  $permissions['download any document files'] = array(
    'name' => 'download any document files',
    'roles' => array(
      'Content Admin' => 'Content Admin',
      'Editor' => 'Editor',
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'file_entity',
  );

  // Exported permission: 'download any image files'.
  $permissions['download any image files'] = array(
    'name' => 'download any image files',
    'roles' => array(
      'Content Admin' => 'Content Admin',
      'Editor' => 'Editor',
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'file_entity',
  );

  // Exported permission: 'download any video files'.
  $permissions['download any video files'] = array(
    'name' => 'download any video files',
    'roles' => array(
      'Content Admin' => 'Content Admin',
      'Editor' => 'Editor',
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'file_entity',
  );

  // Exported permission: 'download own audio files'.
  $permissions['download own audio files'] = array(
    'name' => 'download own audio files',
    'roles' => array(
      'Content Admin' => 'Content Admin',
      'Editor' => 'Editor',
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'file_entity',
  );

  // Exported permission: 'download own document files'.
  $permissions['download own document files'] = array(
    'name' => 'download own document files',
    'roles' => array(
      'Content Admin' => 'Content Admin',
      'Editor' => 'Editor',
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'file_entity',
  );

  // Exported permission: 'download own image files'.
  $permissions['download own image files'] = array(
    'name' => 'download own image files',
    'roles' => array(
      'Content Admin' => 'Content Admin',
      'Editor' => 'Editor',
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'file_entity',
  );

  // Exported permission: 'download own video files'.
  $permissions['download own video files'] = array(
    'name' => 'download own video files',
    'roles' => array(
      'Content Admin' => 'Content Admin',
      'Editor' => 'Editor',
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'file_entity',
  );

  // Exported permission: 'edit any audio files'.
  $permissions['edit any audio files'] = array(
    'name' => 'edit any audio files',
    'roles' => array(
      'Content Admin' => 'Content Admin',
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'file_entity',
  );

  // Exported permission: 'edit any document files'.
  $permissions['edit any document files'] = array(
    'name' => 'edit any document files',
    'roles' => array(
      'Content Admin' => 'Content Admin',
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'file_entity',
  );

  // Exported permission: 'edit any image files'.
  $permissions['edit any image files'] = array(
    'name' => 'edit any image files',
    'roles' => array(
      'Content Admin' => 'Content Admin',
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'file_entity',
  );

  // Exported permission: 'edit any video files'.
  $permissions['edit any video files'] = array(
    'name' => 'edit any video files',
    'roles' => array(
      'Content Admin' => 'Content Admin',
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'file_entity',
  );

  // Exported permission: 'edit own audio files'.
  $permissions['edit own audio files'] = array(
    'name' => 'edit own audio files',
    'roles' => array(
      'Content Admin' => 'Content Admin',
      'Editor' => 'Editor',
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'file_entity',
  );

  // Exported permission: 'edit own document files'.
  $permissions['edit own document files'] = array(
    'name' => 'edit own document files',
    'roles' => array(
      'Content Admin' => 'Content Admin',
      'Editor' => 'Editor',
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'file_entity',
  );

  // Exported permission: 'edit own image files'.
  $permissions['edit own image files'] = array(
    'name' => 'edit own image files',
    'roles' => array(
      'Content Admin' => 'Content Admin',
      'Editor' => 'Editor',
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'file_entity',
  );

  // Exported permission: 'edit own video files'.
  $permissions['edit own video files'] = array(
    'name' => 'edit own video files',
    'roles' => array(
      'Content Admin' => 'Content Admin',
      'Editor' => 'Editor',
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'file_entity',
  );

  // Exported permission: 'epsacrop administer available crops'.
  $permissions['epsacrop administer available crops'] = array(
    'name' => 'epsacrop administer available crops',
    'roles' => array(
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'epsacrop',
  );

  // Exported permission: 'epsacrop create crops'.
  $permissions['epsacrop create crops'] = array(
    'name' => 'epsacrop create crops',
    'roles' => array(
      'Content Admin' => 'Content Admin',
      'Editor' => 'Editor',
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'epsacrop',
  );

  // Exported permission: 'epsacrop delete all crops'.
  $permissions['epsacrop delete all crops'] = array(
    'name' => 'epsacrop delete all crops',
    'roles' => array(),
    'module' => 'epsacrop',
  );

  // Exported permission: 'epsacrop edit all crops'.
  $permissions['epsacrop edit all crops'] = array(
    'name' => 'epsacrop edit all crops',
    'roles' => array(),
    'module' => 'epsacrop',
  );

  // Exported permission: 'revert revisions'.
  $permissions['revert revisions'] = array(
    'name' => 'revert revisions',
    'roles' => array(
      'Content Admin' => 'Content Admin',
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'node',
  );

  // Exported permission: 'use ctools import'.
  $permissions['use ctools import'] = array(
    'name' => 'use ctools import',
    'roles' => array(),
    'module' => 'ctools',
  );

  // Exported permission: 'varbase administer user role'.
  $permissions['varbase administer user role'] = array(
    'name' => 'varbase administer user role',
    'roles' => array(
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'varbase_core',
  );

  // Exported permission: 'view files'.
  $permissions['view files'] = array(
    'name' => 'view files',
    'roles' => array(
      'anonymous user' => 'anonymous user',
      'authenticated user' => 'authenticated user',
    ),
    'module' => 'file_entity',
  );

  // Exported permission: 'view own files'.
  $permissions['view own files'] = array(
    'name' => 'view own files',
    'roles' => array(
      'Content Admin' => 'Content Admin',
      'Editor' => 'Editor',
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'file_entity',
  );

  // Exported permission: 'view own private files'.
  $permissions['view own private files'] = array(
    'name' => 'view own private files',
    'roles' => array(
      'Content Admin' => 'Content Admin',
      'Editor' => 'Editor',
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'file_entity',
  );

  // Exported permission: 'view own unpublished content'.
  $permissions['view own unpublished content'] = array(
    'name' => 'view own unpublished content',
    'roles' => array(
      'Content Admin' => 'Content Admin',
      'Editor' => 'Editor',
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'node',
  );

  // Exported permission: 'view private files'.
  $permissions['view private files'] = array(
    'name' => 'view private files',
    'roles' => array(
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'file_entity',
  );

  // Exported permission: 'view revisions'.
  $permissions['view revisions'] = array(
    'name' => 'view revisions',
    'roles' => array(
      'Content Admin' => 'Content Admin',
      'Editor' => 'Editor',
      'Site Admin' => 'Site Admin',
      'Super Admin' => 'Super Admin',
    ),
    'module' => 'node',
  );

  return $permissions;
}

/**
 * Implements hook_defaultconfig_user_default_roles().
 */
function varbase_core_defaultconfig_user_default_roles() {
  $roles = array();

  // Exported role: Content Admin.
  $roles['Content Admin'] = array(
    'name' => 'Content Admin',
    'weight' => 3,
  );

  // Exported role: Editor.
  $roles['Editor'] = array(
    'name' => 'Editor',
    'weight' => 2,
  );

  // Exported role: Site Admin.
  $roles['Site Admin'] = array(
    'name' => 'Site Admin',
    'weight' => 4,
  );

  // Exported role: Super Admin.
  $roles['Super Admin'] = array(
    'name' => 'Super Admin',
    'weight' => 5,
  );

  return $roles;
}
