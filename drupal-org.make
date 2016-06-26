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

projects[panels][type] = module
projects[panels][subdir] = "contrib"
projects[panels][download][type] = git
projects[panels][download][url] = https://git.drupal.org/project/panels
projects[panels][download][tag] = 8.x-3.0-beta4

projects[panelizer][type] = module
projects[panelizer][subdir] = "contrib"
projects[panelizer][download][type] = git
projects[panelizer][download][url] = https://git.drupal.org/project/panelizer
projects[panelizer][download][tag] = 8.x-3.0-alpha2

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
projects[smart_trim][download][type] = git
projects[smart_trim][download][url] = https://git.drupal.org/project/smart_trim
projects[smart_trim][download][tag] = 8.x-1.0-rc4

projects[advanced_text_formatter][type] = module
projects[advanced_text_formatter][subdir] = "contrib"
projects[advanced_text_formatter][download][type] = git
projects[advanced_text_formatter][download][url] = https://git.drupal.org/project/advanced_text_formatter
projects[advanced_text_formatter][download][tag] = 8.x-1.0-beta3

projects[block_class][type] = module
projects[block_class][subdir] = "contrib"
projects[block_class][download][type] = git
projects[block_class][download][url] = https://git.drupal.org/project/block_class
projects[block_class][download][tag] = 8.x-1.x-dev

projects[metatag][type] = module
projects[metatag][subdir] = "contrib"
projects[metatag][download][type] = git
projects[metatag][download][url] = https://git.drupal.org/project/metatag
projects[metatag][download][tag] = 8.x-1.0-beta4

projects[simplesitemap][type] = module
projects[simplesitemap][subdir] = "contrib"
projects[simplesitemap][download][type] = git
projects[simplesitemap][download][url] = https://git.drupal.org/project/simplesitemap
projects[simplesitemap][download][tag] = 8.x-2.5

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

;;;;;;;;;;;;;;;;;;;;;
;; Development contrib modules
;;;;;;;;;;;;;;;;;;;;;

projects[devel][type] = "module"
projects[devel][version] = "1.x-dev"
projects[devel][subdir] = "contrib/development"
projects[devel][download][type] = "git"
projects[devel][download][branch] = "8.x-1.x"

projects[features][type] = "module"
projects[features][version] = "3.x-dev"
projects[features][subdir] = "contrib/development"
projects[features][download][type] = "git"
projects[features][download][branch] = "8.x-3.x"

;;;;;;;;;;;;;;;;;;;;;
;; Contrib themes
;;;;;;;;;;;;;;;;;;;;;

projects[bootstrap][type] = theme
projects[bootstrap][version] = "8.x-3.0-beta3"
projects[bootstrap][subdir] = "contrib"
projects[bootstrap][download][type] = "git"
projects[bootstrap][download][branch] = "8.x-3.x"

projects[adminimal_theme][type] = theme
projects[adminimal_theme][version] = "8.x-1.1"
projects[adminimal_theme][subdir] = "contrib"
projects[adminimal_theme][download][type] = "git"
projects[adminimal_theme][download][branch] = "8.x-1.x"