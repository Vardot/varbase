core = 8.x
api = 2

; Drupal Core
projects[drupal][type] = "core"
projects[drupal][version] = "8.2.6"
;; Issue #2479377 by edurenye, tstoeckler, andypost, mgifford: content_translation_page_attachments() should check for a canonical link before generating a URL to it
projects[drupal][patch][] = https://www.drupal.org/files/issues/2479377-8.patch

