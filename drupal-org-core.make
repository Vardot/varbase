core = 8.x
api = 2

; Drupal Core
projects[drupal][type] = "core"
projects[drupal][version] = "8.2.7"
;; Issue #2479377: content_translation_page_attachments() should check for a canonical link before generating a URL to it
projects[drupal][patch][] = https://www.drupal.org/files/issues/content-translation-canonical-2479377-30.patch
projects[drupal][patch][] = https://www.drupal.org/files/issues/drupal_8-allow_stg_robots-2853988-2.patch

