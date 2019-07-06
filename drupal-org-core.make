api = 2
core = 8.x

; Drupal Core
projects[drupal][type] = "core"
projects[drupal][version] = "8.7.4"
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
;; Issue #2893892: Fixed Warning Invalid argument supplied for foreach() in Drupal
projects[drupal][patch][] = https://www.drupal.org/files/issues/2018-12-10/core--getDerivatives-Invalid-argument-foreach--2893892-11-d8.patch
;; Issue #3044656: Add a helper method to strip subdirectories from URL paths
projects[drupal][patch][] = https://www.drupal.org/files/issues/2019-03-31/3044656-2.patch
;; Issue #2646744: Drupal Core Url does not accept root-relative (file) URLs, making it impossible to let LinkGenerator create root-relative file URL links
projects[drupal][patch][] = https://www.drupal.org/files/issues/2018-12-15/2646744-34.patch
;; Issue #3060550: oembed link does not pass the URL parameter to the provider
projects[drupal][patch][] = https://www.drupal.org/files/issues/2019-06-10/3060550-oembed-link-does-not-pass-url-parameter-to-provider-1.patch
