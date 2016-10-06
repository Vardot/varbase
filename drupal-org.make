core = 8.x
api = 2

;;;;;;;;;;;;;;;;;;;;;
;; Contrib modules
;;;;;;;;;;;;;;;;;;;;;

projects[config_update][type] = module
projects[config_update][subdir] = "contrib"
projects[config_update][version] = 1.1

projects[composer_manager][type] = module
projects[composer_manager][subdir] = "contrib"
projects[composer_manager][version] = 1.0-rc2

projects[ctools][type] = module
projects[ctools][subdir] = "contrib"
projects[ctools][version] = 3.0-alpha27

projects[token][type] = module
projects[token][subdir] = "contrib"
projects[token][version] = 1.0-beta2

projects[page_manager][type] = module
projects[page_manager][subdir] = "contrib"
projects[page_manager][version] = 1.0-alpha24

projects[panels][type] = module
projects[panels][subdir] = "contrib"
projects[panels][version] = 3.0-beta5
;; Issue #2793801 : Allow modules to influence the IPE tempstore ID
projects[panels][patch][] = https://www.drupal.org/files/issues/2793801-9.patch

projects[panelizer][type] = module
projects[panelizer][subdir] = "contrib"
projects[panelizer][version] = 3.0-alpha2
;; Issue #2747739 : [panelizer] Create and host mega patches until the Panels ecosystem stabilizes and releases
projects[panelizer][patch][] = https://www.drupal.org/files/issues/panelizer--alpha2-1ddfa61--2747739-5.patch
;; Issue #2701349 : Generate new UUIDs for displays when switching from default to field storage
projects[panelizer][patch][] = https://www.drupal.org/files/issues/2701349-2.patch
;; Issue #2700597 : Explicitly set the Panels IPE URL root when saving in Panelizer
projects[panelizer][patch][] = https://www.drupal.org/files/issues/panelizer-ipe-url-root-handling.patch
;; Issue #2664682 : Implement admin UI for editing Panelizer defaults
projects[panelizer][patch][] = https://www.drupal.org/files/issues/2664682-55.patch
;; Issue #2793841 - Properly integrate with Panels IPE
projects[panelizer][patch][] = https://www.drupal.org/files/issues/panelizer-panels-ipe-tempstore-id.patch

projects[layout_plugin][type] = module
projects[layout_plugin][subdir] = "contrib"n
projects[layout_plugin][version] = 1.0-alpha22
;; Issue #2811423 : Add public getLayout() method to LayoutBase - via mega patch
projects[layout_plugin][patch][] = https://www.drupal.org/files/issues/2747739-26--layout_plugin-alpha22-to-96a5cf90.patch

projects[bootstrap_layouts][type] = module
projects[bootstrap_layouts][subdir] = "contrib"
projects[bootstrap_layouts][version] = 3.1

projects[ds][type] = module
projects[ds][subdir] = "contrib"
projects[ds][version] = 2.6

projects[field_group][type] = module
projects[field_group][subdir] = "contrib"
projects[field_group][version] = 1.0-rc4

projects[smart_trim][type] = module
projects[smart_trim][subdir] = "contrib"
projects[smart_trim][version] = 1.0

projects[advanced_text_formatter][type] = module
projects[advanced_text_formatter][subdir] = "contrib"
projects[advanced_text_formatter][version] = 1.0-beta3

projects[block_class][type] = module
projects[block_class][subdir] = "contrib"
projects[block_class][version] = 1.0-alpha1

projects[extlink][type] = module
projects[extlink][subdir] = "contrib"
projects[extlink][version] = 1.0-alpha3

projects[linkit][type] = module
projects[linkit][subdir] = "contrib"
projects[linkit][version] = 4.1

projects[anchor_link][type] = module
projects[anchor_link][subdir] = "contrib"
projects[anchor_link] = 1.0-alpha1

projects[views_infinite_scroll][type] = module
projects[views_infinite_scroll][subdir] = "contrib"
projects[views_infinite_scroll][version] = 1.2

projects[embed][type] = module
projects[embed][subdir] = "contrib"
projects[embed][download][version] = 1.0-rc3

projects[entity][type] = module
projects[entity][subdir] = "contrib"
projects[entity][download][version] = 1.0-alpha3

projects[entity_browser][type] = module
projects[entity_browser][subdir] = "contrib"
projects[entity_browser][version] = 1.0-alpha9

projects[entity_embed][type] = module
projects[entity_embed][subdir] = "contrib"
projects[entity_embed][version] = 1.0-beta1

projects[inline_entity_form][type] = module
projects[inline_entity_form][subdir] = "contrib"
projects[inline_entity_form][version] = 1.0-alpha6

projects[media_entity][type] = module
projects[media_entity][subdir] = "contrib"
projects[media_entity][version] = 1.5

projects[media_entity_document][type] = module
projects[media_entity_document][subdir] = "contrib"
projects[media_entity_document][version] = 1.1

projects[media_entity_image][type] = module
projects[media_entity_image][subdir] = "contrib"
projects[media_entity_image][version] = 1.2

projects[media_entity_audio][type] = module
projects[media_entity_audio][subdir] = "contrib"
projects[media_entity_audio][version] = 1.0-beta3

projects[video_embed_field][type] = module
projects[video_embed_field][subdir] = "contrib"
projects[video_embed_field][version] = 1.3

projects[entityqueue][type] = module
projects[entityqueue][subdir] = "contrib"
projects[entityqueue][version] = 1.0-alpha4

;;;;;;;;;;;;;;;;;;;;;
;; Contrib modules for Varbase SEO.
;;;;;;;;;;;;;;;;;;;;;

projects[pathauto][type] = module
projects[pathauto][subdir] = "contrib"
projects[pathauto][version] = 1.0-beta1

projects[redirect][type] = module
projects[redirect][subdir] = "contrib"
projects[redirect][version] = 1.0-alpha1

projects[metatag][type] = module
projects[metatag][subdir] = "contrib"
projects[metatag][version] = 1.0-beta10

projects[xmlsitemap][type] = module
projects[xmlsitemap][subdir] = "contrib"
projects[xmlsitemap][version] = 1.0-alpha2

projects[google_analytics][type] = module
projects[google_analytics][subdir] = "contrib"
projects[google_analytics][version] = 2.1

;;;;;;;;;;;;;;;;;;;;;
;; Development contrib modules
;;;;;;;;;;;;;;;;;;;;;

projects[features][type] = module
projects[features][subdir] = "contrib"
projects[features][version] = 3.0-rc1

projects[coffee][type] = module
projects[coffee][subdir] = "contrib"
projects[coffee][version] = 1.0-beta1

projects[diff][type] = module
projects[diff][subdir] = "contrib"
projects[diff][version] = 1.0-beta1

;;;;;;;;;;;;;;;;;;;;;
;; Contrib themes
;;;;;;;;;;;;;;;;;;;;;

projects[bootstrap][type] = theme
projects[bootstrap][subdir] = "contrib"
projects[bootstrap][version] = 3.0-rc2

projects[adminimal_theme][type] = theme
projects[adminimal_theme][subdir] = "contrib"
projects[adminimal_theme][version] = 1.1

;;;;;;;;;;;;;;;;;;;;;
;; Varbase public contrib features
;;;;;;;;;;;;;;;;;;;;;

projects[varbase_editor][type] = module
projects[varbase_editor][subdir] = "contrib"
projects[varbase_editor][version] = 4.0
