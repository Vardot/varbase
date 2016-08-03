api = 2
core = 8.x

;;;;;;;;;;;;;;;;;;;;;
;; Contrib modules
;;;;;;;;;;;;;;;;;;;;;

projects[config_update][type] = module
projects[config_update][subdir] = "contrib"
projects[config_update][download][type] = git
projects[config_update][download][url] = https://git.drupal.org/project/config_update.git
projects[config_update][download][tag] = 8.x-1.1

projects[composer_manager][type] = module
projects[composer_manager][subdir] = "contrib"
projects[composer_manager][download][type] = git
projects[composer_manager][download][url] = https://git.drupal.org/project/composer_manager
projects[composer_manager][download][tag] = 8.x-1.0-rc2

projects[ctools][type] = module
projects[ctools][subdir] = "contrib"
projects[ctools][download][type] = git
projects[ctools][download][url] = https://git.drupal.org/project/ctools
projects[ctools][download][tag] = 8.x-3.0-alpha26
;; Issue #2747739 : [ctools] Create and host mega patches until the Panels ecosystem stabilizes and releases
projects[ctools][patch][] = https://www.drupal.org/files/issues/ctools--8.x-3.0-alpha26--1fe3649.patch
;; Issue #2672110 : EntityFieldDeriver naive about field info, throws PHP warnings
projects[ctools][patch][] = https://www.drupal.org/files/issues/ctools_2672110_16.patch

projects[token][type] = module
projects[token][subdir] = "contrib"
projects[token][download][type] = git
projects[token][download][url] = https://git.drupal.org/project/token
projects[token][download][tag] = 8.x-1.0-alpha2

projects[pathauto][type] = module
projects[pathauto][subdir] = "contrib"
projects[pathauto][download][type] = git
projects[pathauto][download][url] = https://git.drupal.org/project/pathauto
projects[pathauto][download][tag] = 8.x-1.0-alpha3

projects[page_manager][type] = module
projects[page_manager][subdir] = "contrib"
projects[page_manager][download][type] = git
projects[page_manager][download][url] = https://git.drupal.org/project/page_manager
projects[page_manager][download][tag] = 8.x-1.0-alpha23
;; Issue #2747739 : [page_manager] Create and host mega patches until the Panels ecosystem stabilizes and releases
projects[page_manager][patch][] = https://www.drupal.org/files/issues/page_manager--alpha23-09e79ff--2747739-3.patch

projects[panels][type] = module
projects[panels][subdir] = "contrib"
projects[panels][download][type] = git
projects[panels][download][url] = https://git.drupal.org/project/panels
projects[panels][download][tag] = 8.x-3.0-beta4
;; Issue #2667754 : Allow other modules to disable the IPE based on custom logic
projects[panels][patch][] = https://www.drupal.org/files/issues/2667754-3.patch
;; Bandaid tempstore patch
projects[panels][patch][] = https://www.drupal.org/files/issues/bandaid.patch
;; Issue #2697587 : Wizard API integration
projects[panels][patch][] = https://www.drupal.org/files/issues/2697587-42.patch

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
projects[panelizer][patch][] = https://www.drupal.org/files/issues/2664682-45.patch

projects[layout_plugin][type] = module
projects[layout_plugin][subdir] = "contrib"
projects[layout_plugin][download][type] = git
projects[layout_plugin][download][url] = https://git.drupal.org/project/layout_plugin
projects[layout_plugin][download][tag] = 8.x-1.0-alpha22

projects[bootstrap_layouts][type] = module
projects[bootstrap_layouts][subdir] = "contrib"
projects[bootstrap_layouts][download][type] = git
projects[bootstrap_layouts][download][url] = https://git.drupal.org/project/bootstrap_layouts
projects[bootstrap_layouts][download][tag] = 8.x-3.1

projects[ds][type] = module
projects[ds][subdir] = "contrib"
projects[ds][download][type] = git
projects[ds][download][url] = https://git.drupal.org/project/ds
projects[ds][download][tag] = 8.x-2.5

projects[field_group][type] = module
projects[field_group][subdir] = "contrib"
projects[field_group][download][type] = git
projects[field_group][download][url] = https://git.drupal.org/project/field_group
projects[field_group][download][tag] = 8.x-1.0-rc4

projects[smart_trim][type] = module
projects[smart_trim][subdir] = "contrib"
projects[smart_trim][version] = "8.x-1.0"
projects[smart_trim][download][type] = git
projects[smart_trim][download][branch] = 8.x-1.x

projects[advanced_text_formatter][type] = module
projects[advanced_text_formatter][subdir] = "contrib"
projects[advanced_text_formatter][download][type] = git
projects[advanced_text_formatter][download][url] = https://git.drupal.org/project/advanced_text_formatter
projects[advanced_text_formatter][download][tag] = 8.x-1.0-beta3

projects[block_class][type] = module
projects[block_class][subdir] = "contrib"
projects[block_class][version] = "8.x-1.x-dev"
projects[block_class][download][type] = git
projects[block_class][download][branch] = 8.x-1.x

projects[metatag][type] = module
projects[metatag][subdir] = "contrib"
projects[metatag][download][type] = git
projects[metatag][download][url] = https://git.drupal.org/project/metatag
projects[metatag][download][tag] = 8.x-1.0-beta9

projects[google_analytics][type] = module
projects[google_analytics][subdir] = "contrib"
projects[google_analytics][download][type] = git
projects[google_analytics][download][url] = https://git.drupal.org/project/google_analytics
projects[google_analytics][download][tag] = 8.x-2.0

projects[extlink][type] = module
projects[extlink][subdir] = "contrib"
projects[extlink][download][type] = git
projects[extlink][download][url] = https://git.drupal.org/project/extlink
projects[extlink][download][tag] = 8.x-1.0-alpha2

projects[linkit][type] = module
projects[linkit][subdir] = "contrib"
projects[linkit][download][type] = git
projects[linkit][download][url] = https://git.drupal.org/project/linkit
projects[linkit][download][tag] = 8.x-4.1

projects[anchor_link][type] = module
projects[anchor_link][subdir] = "contrib"
projects[anchor_link][download][type] = git
projects[anchor_link][download][url] = https://git.drupal.org/project/anchor_link
projects[anchor_link][download][tag] = 8.x-1.0-alpha1

projects[views_infinite_scroll][type] = module
projects[views_infinite_scroll][download][type] = git
projects[views_infinite_scroll][download][url] = https://git.drupal.org/project/views_infinite_scroll
projects[views_infinite_scroll][download][tag] = 8.x-1.0
;; Issue #2701881 : View No results area doesn't appear even view has no results
projects[views_infinite_scroll][patch][] = https://www.drupal.org/files/issues/no-wrapper-empty-rows-2701881-2.patch

projects[embed][type] = module
projects[embed][subdir] = "contrib"
projects[embed][download][type] = git
projects[embed][download][url] = https://git.drupal.org/project/embed
projects[embed][download][tag] = 8.x-1.0-rc3

projects[entity][type] = module
projects[entity][subdir] = "contrib"
projects[entity][download][type] = git
projects[entity][download][url] = https://git.drupal.org/project/entity
projects[entity][download][tag] = 8.x-1.0-alpha3

projects[entity_browser][type] = module
projects[entity_browser][subdir] = "contrib"
projects[entity_browser][download][type] = git
projects[entity_browser][download][url] = https://git.drupal.org/project/entity_browser
projects[entity_browser][download][tag] = 8.x-1.0-alpha6
;; Issue #2738843 : The view widget should support radio buttons
projects[entity_browser][patch][] = https://www.drupal.org/files/issues/2738843-7.patch

projects[entity_embed][type] = module
projects[entity_embed][subdir] = "contrib"
projects[entity_embed][download][type] = git
projects[entity_embed][download][url] = https://git.drupal.org/project/entity_embed
projects[entity_embed][download][tag] = 8.x-1.0-alpha2

projects[inline_entity_form][type] = module
projects[inline_entity_form][subdir] = "contrib"
projects[inline_entity_form][download][type] = git
projects[inline_entity_form][download][url] = https://git.drupal.org/project/inline_entity_form
projects[inline_entity_form][download][tag] = 8.x-1.0-alpha6

projects[media_entity][type] = module
projects[media_entity][subdir] = "contrib"
projects[media_entity][download][type] = git
projects[media_entity][download][url] = https://git.drupal.org/project/media_entity
projects[media_entity][download][tag] = 8.x-1.2

projects[media_entity_document][type] = module
projects[media_entity_document][subdir] = "contrib"
projects[media_entity_document][download][type] = git
projects[media_entity_document][download][url] = https://git.drupal.org/project/media_entity_document
projects[media_entity_document][download][tag] = 8.x-1.0

projects[media_entity_image][type] = module
projects[media_entity_image][subdir] = "contrib"
projects[media_entity_image][download][type] = git
projects[media_entity_image][download][url] = https://git.drupal.org/project/media_entity_image
projects[media_entity_image][download][tag] = 8.x-1.1

projects[video_embed_field][type] = module
projects[video_embed_field][subdir] = "contrib"
projects[video_embed_field][download][type] = git
projects[video_embed_field][download][url] = https://git.drupal.org/project/video_embed_field
projects[video_embed_field][download][tag] = 8.x-1.2

;;;;;;;;;;;;;;;;;;;;;
;; Development contrib modules
;;;;;;;;;;;;;;;;;;;;;

projects[devel][type] = "module"
projects[devel][version] = "1.x-dev"
projects[devel][subdir] = "contrib/development"
projects[devel][download][type] = "git"
projects[devel][download][branch] = "8.x-1.x"

projects[features][type] = "module"
projects[features][version] = "8.x-3.0-beta6"
projects[features][subdir] = "contrib/development"
projects[features][download][type] = "git"
projects[features][download][branch] = "8.x-3.x"

;;;;;;;;;;;;;;;;;;;;;
;; Contrib themes
;;;;;;;;;;;;;;;;;;;;;

projects[bootstrap][type] = theme
projects[bootstrap][version] = "8.3.0-rc1"
projects[bootstrap][subdir] = "contrib"
projects[bootstrap][download][type] = "git"
projects[bootstrap][download][branch] = "8.x-3.x"

projects[adminimal_theme][type] = theme
projects[adminimal_theme][version] = "8.x-1.1"
projects[adminimal_theme][subdir] = "contrib"
projects[adminimal_theme][download][type] = "git"
projects[adminimal_theme][download][branch] = "8.x-1.x"

;;;;;;;;;;;;;;;;;;;;;
;; Varbase public contrib features
;;;;;;;;;;;;;;;;;;;;;

projects[varbase_editor][type] = "module"
projects[varbase_editor][subdir] = "varbase_features"
projects[varbase_editor][version] = "8.x-4.x-dev"
projects[varbase_editor][download][type] = "git"
projects[varbase_editor][download][branch] = "8.x-4.x"