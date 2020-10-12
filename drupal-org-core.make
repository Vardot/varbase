api = 2
core = 8.x

; Drupal Core
projects[drupal][type] = "core"
projects[drupal][version] = "8.9.7"
;; Issue #2869592: Disabled update module shouldn't produce a status report warning
projects[drupal][patch][] = https://www.drupal.org/files/issues/2869592-remove-update-warning-7.patch
;; Issue #2815221: Add quickedit to the latest-revision route
projects[drupal][patch][] = https://www.drupal.org/files/issues/2019-11-27/2815221-125.patch
;; Issue #1356276: Allow profiles to define a base/parent profile and load them in the correct order
projects[drupal][patch][] = https://www.drupal.org/files/issues/2019-11-05/1356276-531-8.8.x-4.patch
;; Issue #2914389: Allow profiles to exclude dependencies of their parent
projects[drupal][patch][] = https://www.drupal.org/files/issues/2018-07-09/2914389-8-do-not-test.patch
;; Issue #2893892: Fixed Warning Invalid argument supplied for foreach() in Drupal
projects[drupal][patch][] = https://www.drupal.org/files/issues/2018-12-10/core--getDerivatives-Invalid-argument-foreach--2893892-11-d8.patch
;; Issue #3044656: Add a helper method to strip subdirectories from URL paths
projects[drupal][patch][] = https://www.drupal.org/files/issues/2019-03-31/3044656-2.patch
;; Issue #3101231: Fix multilingual site's layout edit context issue with TypeError: Argument 1 passed to UrlHelper::buildQuery() must be of the type array, null given
projects[drupal][patch][] = https://www.drupal.org/files/issues/2019-12-19/3101231-19.patch
;; Issue #2996114: Fix Argument 2 passed to Drupal jsonapi Routing closure must be an instance of ResourceType, NULL given
projects[drupal][patch][] = https://www.drupal.org/files/issues/2019-12-03/2996114-99.patch
;; Issue #2985882: Fix Error: Call to a member function getLabel() after enabling layout_builder
projects[drupal][patch][] = https://www.drupal.org/files/issues/2020-01-20/2985882-53.patch
;; Issue #2741877: Nested modals don't work: opening a modal from a modal closes the original
projects[drupal][patch][] = https://www.drupal.org/files/issues/2020-04-20/2741877-48.patch
;; Issue #3165435: Fix tour <front> route as route name when a selected node had been set as the front page for the site
projects[drupal][patch][] = https://www.drupal.org/files/issues/2020-08-16/3165435-2.patch
