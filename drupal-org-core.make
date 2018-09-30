api = 2
core = 8.x

; Drupal Core
projects[drupal][type] = "core"
projects[drupal][version] = "8.6.1"
;; Issue #1356276: Allow profiles to provide a base_parent profile and load them in the correct order
projects[drupal][patch][] = https://www.drupal.org/files/issues/2018-09-14/1356276-486.patch
;; Issue #2855026: Installation profiles do not support project:module format for dependencies
projects[drupal][patch][] = https://www.drupal.org/files/issues/2018-09-10/drupal-support_project_module_format_dependencies-2855026-49.patch
;; Issue #2720101: Label (Title) not set for Views block (exposed filters in Block)
projects[drupal][patch][] = https://www.drupal.org/files/issues/2720101-53.patch
;; Issue #2853988: Add option to rewrite robots.txt on staging environments
projects[drupal][patch][] = https://www.drupal.org/files/issues/drupal_8-allow_stg_robots-2853988-2.patch
;; Issue #2599228: Programmatically created translatable content type returns SQL error on content creation
projects[drupal][patch][] = https://www.drupal.org/files/issues/2018-08-08/2599228-58.patch
;; Issue #2893892: Fixed Warning Invalid argument supplied for foreach() in Drupal
projects[drupal][patch][] = https://www.drupal.org/files/issues/patch_empty_fix.patch