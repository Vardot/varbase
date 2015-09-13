; A separate drupal-org-core.make file to apply core patches
; if we need to and control core version.

api = 2
core = 7.x
projects[drupal][type] = core
projects[drupal][version] = 7.39

; Patches for Core

; Allow install profiles to declare base profiles for Drupal 7 - http://drupal.org/node/2067229
projects[drupal][patch][2067229] = "http://www.drupal.org/files/issues/drupal-inheritable-profiles-2067229-47.patch"

; Improve theme registry build performance by 85% - https://www.drupal.org/node/2339447
projects[drupal][patch][2339447] = "http://www.drupal.org/files/issues/D7_improve_theme_registry-2339447-65.patch"

; PHP warnings in PHP 5.6 because of always_populate_raw_post_data ini setting - http://www.drupal.org/node/2456025
projects[drupal][patch][2456025] = "http://www.drupal.org/files/issues/php_warnings_in_php_5_6-2456025-21.patch"
