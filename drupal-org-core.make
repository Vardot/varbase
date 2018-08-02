api = 2
core = 8.x

; Drupal Core
projects[drupal][type] = "core"
projects[drupal][version] = "8.5.6"
;; Issue #1356276: Allow profiles to provide a base_parent profile and load them in the correct order
projects[drupal][patch][] = https://www.drupal.org/files/issues/1356278-408--8.5.x-real.patch
;; Issue #2720101: Label (Title) not set for Views block (exposed filters in Block)
projects[drupal][patch][] = https://www.drupal.org/files/issues/2720101-43.patch
;; Issue #2853988: Add option to rewrite robots.txt on staging environments
projects[drupal][patch][] = https://www.drupal.org/files/issues/drupal_8-allow_stg_robots-2853988-2.patch
;; Issue #2599228: Programmatically created translatable content type returns SQL error on content creation
projects[drupal][patch][] = https://www.drupal.org/files/issues/2599228-31-tests-only.patch
;; Issue #2893892: Fixed Warning Invalid argument supplied for foreach() in Drupal
projects[drupal][patch][] = https://www.drupal.org/files/issues/patch_empty_fix.patch
;; Issue #2877383: Add action support to Media module.
projects[drupal][patch][] = https://www.drupal.org/files/issues/2877383-56.patch
;; Issue #2670730: Provide a delete action for each content entity type.
projects[drupal][patch][] = https://www.drupal.org/files/issues/2670730-81-89-8.5.0-rc1.patch
;; Issue #2855521: Fix Drupalimage calling drupallink functions without checking if the plugin is loaded.
projects[drupal][patch][] = https://www.drupal.org/files/issues/edit_drupalimage-2855521-15.patch
;; Issue #2936358: Layout Builder should be opt-in per display (entity type/bundle/view mode)
projects[drupal][patch][] = https://www.drupal.org/files/issues/2018-07-28/2936358-opt_in-2936358-64-do-not-test.patch