api = 2
core = 8.x

; Drupal Core
projects[drupal][type] = "core"
projects[drupal][version] = "8.3.0"
;; Issue #1356276: Allow profiles to provide a base_parent profile and load them in the correct order 
projects[drupal][patch][] = https://www.drupal.org/files/issues/1356276-303.patch
;; Issue #2853988: Add option to rewrite robots.txt on staging environments
projects[drupal][patch][] = https://www.drupal.org/files/issues/drupal_8-allow_stg_robots-2853988-2.patch

;;;;;;;;;;;;;;;;;;;;;
;; Libraries
;;;;;;;;;;;;;;;;;;;;;

libraries[dropzone][download][type] = get
libraries[dropzone][download][url] = "https://github.com/enyo/dropzone/archive/v4.3.0.tar.gz"

libraries[blazy][download][type] = get
libraries[blazy][download][url] = "https://github.com/dinbror/blazy/archive/1.8.2.tar.gz"

libraries[slick][download][type] = get
libraries[slick][download][url] = "https://github.com/kenwheeler/slick/archive/1.6.0.tar.gz"
