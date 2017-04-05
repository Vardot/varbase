core = 8.x
api = 2

; Drupal Core
projects[drupal][type] = "core"
projects[drupal][version] = "8.3.0-rc2"
;; Issue #1356276: Allow profiles to provide a base/parent profile and load them in the correct order
projects[drupal][patch][] = https://www.drupal.org/files/issues/1356276-291.patch
;; Issue #2853988: Add option to rewrite robots.txt on staging environments
projects[drupal][patch][] = https://www.drupal.org/files/issues/drupal_8-allow_stg_robots-2853988-2.patch

