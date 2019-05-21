api = 2
core = 8.x

; Drupal Core
projects[drupal][type] = "core"
projects[drupal][version] = "8.7.1"
;; Issue #2869592: Disabled update module shouldn't produce a status report warning
projects[drupal][patch][] = https://www.drupal.org/files/issues/2869592-remove-update-warning-7.patch
;; Issue #2885441: EntityReferenceAutocompleteWidget should define its size setting as an integer
projects[drupal][patch][] = https://www.drupal.org/files/issues/2885441-2.patch
;; Issue #2815221: Add quickedit to the latest-revision route
projects[drupal][patch][] = https://www.drupal.org/files/issues/2019-03-05/2815221-116.patch
;; Issue #1356276: Allow profiles to define a base/parent profile and load them in the correct order
projects[drupal][patch][] = https://www.drupal.org/files/issues/2018-10-12/1356276-531.patch
;; Issue #2914389: Allow profiles to exclude dependencies of their parent
projects[drupal][patch][] = https://www.drupal.org/files/issues/2018-07-09/2914389-8-do-not-test.patch
;; Issue #2853988: Add option to rewrite robots.txt on staging environments
projects[drupal][patch][] = https://www.drupal.org/files/issues/2018-10-06/2599228-74.patch
;; Issue #2893892: Fixed Warning Invalid argument supplied for foreach() in Drupal
projects[drupal][patch][] = https://www.drupal.org/files/issues/2018-12-10/core--getDerivatives-Invalid-argument-foreach--2893892-11-d8.patch
;; Issue #3052492: Fixed Failed while updating from 8.6.x to 8.7.x as ViewsEntitySchemaSubscriber should not make an entity update fail if a view cannot be resaved
projects[drupal][patch][] = https://www.drupal.org/files/issues/2019-05-06/3052492-13.patch
;; Issue #3052140: Cannot convert custom entity types from non-revisionable to revisionable with pre-8.7.x compatible methods
projects[drupal][patch][] = https://www.drupal.org/files/issues/2019-05-04/3052140-13.patch
;; Issue #3039586: Cannot rename tmp menu_link_content_revision to menu_link_content_revision
projects[drupal][patch][] = https://www.drupal.org/files/issues/2019-05-02/3039586-22.patch
;; Issue #3052431: layout_builder_post_update_make_layout_untranslatable() still attempts to query all revisions for non-revisionable entities
projects[drupal][patch][] = https://www.drupal.org/files/issues/2019-05-06/3052431-7.patch
