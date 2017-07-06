api = 2
core = 8.x

; Drupal Core
projects[drupal][type] = "core"
projects[drupal][version] = "8.3.5"
;; Issue #1356276: Allow profiles to provide a base_parent profile and load them in the correct order 
projects[drupal][patch][] = https://www.drupal.org/files/issues/1356276-303.patch
;; Issue #2720101 by dobe, Manuel Garcia, camilocodes, Jo Fitzgerald: Label (Title) not set for Views block (exposed filters in Block)
projects[drupal][patch][] = https://www.drupal.org/files/issues/2720101-30.patch
;; Issue #2853988: Add option to rewrite robots.txt on staging environments
projects[drupal][patch][] = https://www.drupal.org/files/issues/drupal_8-allow_stg_robots-2853988-2.patch
