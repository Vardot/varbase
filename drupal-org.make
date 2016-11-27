core = 8.x
api = 2

;;;;;;;;;;;;;;;;;;;;;
;; Contrib modules
;;;;;;;;;;;;;;;;;;;;;

projects[config_update][type] = module
projects[config_update][subdir] = "contrib"
projects[config_update][version] = 1.2

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
projects[panels][download][type] = git
projects[panels][download][url] = https://git.drupal.org/project/panels
projects[panels][download][tag] = 8.x-3.0-beta5
;; Issue #2793801 : Allow modules to influence the IPE tempstore ID
projects[panels][patch][] = https://www.drupal.org/files/issues/2793801-9.patch

projects[panelizer][type] = module
projects[panelizer][subdir] = "contrib"
projects[panelizer][download][type] = git
projects[panelizer][download][url] = https://git.drupal.org/project/panelizer
projects[panelizer][download][tag] = 8.x-3.0-alpha2
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
projects[layout_plugin][subdir] = "contrib"
projects[layout_plugin][version] = 1.0-alpha23

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
projects[anchor_link][version] = 1.2

projects[views_infinite_scroll][type] = module
projects[views_infinite_scroll][subdir] = "contrib"
projects[views_infinite_scroll][version] = 1.3

projects[embed][type] = module
projects[embed][subdir] = "contrib"
projects[embed][version] = 1.0-rc3

projects[entity][type] = module
projects[entity][subdir] = "contrib"
projects[entity][version] = 1.0-alpha3

projects[entity_browser][type] = module
projects[entity_browser][subdir] = "contrib"
projects[entity_browser][download][url] = http://git.drupal.org/project/entity_browser
projects[entity_browser][download][revision] = 403612b620ecf41f31e5ff2eaa424d151d3257ef
projects[entity_browser][download][branch] = 8.x-1.x
;; Issue #2809659 by CTaPByK, ruloweb: Make field widget display plugins implement ConfigurablePluginInterface
projects[entity_browser][patch][] = https://www.drupal.org/files/issues/make_field_widget-2809659-17.patch

projects[entity_browser_enhanced][type] = module
projects[entity_browser_enhanced][subdir] = "contrib"
projects[entity_browser_enhanced][version] = 1.0-beta1

projects[dropzonejs][type] = module
projects[dropzonejs][subdir] = "contrib"
projects[dropzonejs][version] = 1.0-alpha3

projects[entity_embed][type] = module
projects[entity_embed][subdir] = "contrib"
projects[entity_embed][version] = 1.0-beta2

projects[inline_entity_form][type] = module
projects[inline_entity_form][subdir] = "contrib"
projects[inline_entity_form][version] = 1.0-beta1

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
projects[entityqueue][download][url] = http://git.drupal.org/project/entityqueue
projects[entityqueue][download][revision] = f755d8cbc7039eaa3b5d056648a8ef3956a83c1e
projects[entityqueue][download][branch] = 8.x-1.x
;; Issue #2821631 by josebc: Queue is always required when using  Limit to a specific entity queue
projects[entityqueue][patch][] = https://www.drupal.org/files/issues/2821631-8.patch
;; Issue #2145441 by josebc, Xenza: Option to create Entityqueue tab on Entity pages
projects[entityqueue][patch][] = https://www.drupal.org/files/issues/entityqueue-add_entityqueue_tab-2145441-17.patch


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
projects[metatag][version] = 1.0-beta11

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
projects[features][version] = 3.1

projects[coffee][type] = module
projects[coffee][subdir] = "contrib"
projects[coffee][version] = 1.0-beta2

projects[diff][type] = module
projects[diff][subdir] = "contrib"
projects[diff][version] = 1.0-beta2

projects[masquerade][type] = module
projects[masquerade][subdir] = "contrib"
projects[masquerade][version] = 1.0-beta1

projects[libraries][type] = module
projects[libraries][subdir] = "contrib"
projects[libraries][download][url] = https://git.drupal.org/project/libraries.git
projects[libraries][download][revision] = 08a46ab12b573f1f48e9d160ed21a36417b5f749
projects[libraries][download][branch] = 8.x-3.x

projects[libraries_ui][type] = module
projects[libraries_ui][subdir] = "contrib"
projects[libraries_ui][version] = 1.0

;;;;;;;;;;;;;;;;;;;;;
;; Contrib themes
;;;;;;;;;;;;;;;;;;;;;

projects[bootstrap][type] = theme
projects[bootstrap][subdir] = "contrib"
projects[bootstrap][version] = 3.0

projects[adminimal_theme][type] = theme
projects[adminimal_theme][subdir] = "contrib"
projects[adminimal_theme][version] = 1.2

;;;;;;;;;;;;;;;;;;;;;
;; Varbase public contrib features
;;;;;;;;;;;;;;;;;;;;;

projects[varbase_editor][type] = module
projects[varbase_editor][subdir] = "contrib"
projects[varbase_editor][version] = 4.1

;;;;;;;;;;;;;;;;;;;;;
;; Libraries
;;;;;;;;;;;;;;;;;;;;;

libraries[dropzone][type] = library
libraries[dropzone][download][type] = get
libraries[dropzone][subdir] = "/libraries"
libraries[dropzone][download][url] = "https://github.com/enyo/dropzone/archive/v4.3.0.tar.gz"
