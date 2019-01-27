api = 2
core = 8.x

; Drupal Core
projects[drupal][type] = "core"
projects[drupal][version] = "8.6.7"
;; Issue #2869592: Disabled update module shouldn't produce a status report warning
projects[drupal][patch][] = https://www.drupal.org/files/issues/2869592-remove-update-warning-7.patch
;; Issue #2885441: EntityReferenceAutocompleteWidget should define its size setting as an integer
projects[drupal][patch][] = https://www.drupal.org/files/issues/2885441-2.patch
;; Issue #2815221: Add quickedit to the latest-revision route
projects[drupal][patch][] = https://www.drupal.org/files/issues/2018-09-24/2815221-109.patch
;; Issue #1356276: Allow profiles to define a base/parent profile and load them in the correct order
projects[drupal][patch][] = https://www.drupal.org/files/issues/2018-10-23/1356276-549-8.6.x.patch
;; Issue #2914389: Allow profiles to exclude dependencies of their parent
projects[drupal][patch][] = https://www.drupal.org/files/issues/2018-11-07/2914389-11-do-not-test.patch
;; Issue #2720101 Label (Title) not set for Views block (exposed filters in Block)
projects[drupal][patch][] = https://www.drupal.org/files/issues/2720101-53.patch
;; Issue #2853988: Add option to rewrite robots.txt on staging environments
projects[drupal][patch][] = https://www.drupal.org/files/issues/drupal_8-allow_stg_robots-2853988-2.patch
;; Issue #2599228: Programmatically created translatable content type returns SQL error on content creation
projects[drupal][patch][] = https://www.drupal.org/files/issues/2018-10-06/2599228-74.patch
;; Issue #2893892: Fixed Warning Invalid argument supplied for foreach() in Drupal
projects[drupal][patch][] = https://www.drupal.org/files/issues/patch_empty_fix.patch
