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

projects[ctools][type] = module
projects[ctools][subdir] = "contrib"
projects[ctools][download][type] = git
projects[ctools][download][url] = https://git.drupal.org/project/ctools
projects[ctools][download][tag] = 8.x-3.0-alpha26


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
;; Base theme
;;;;;;;;;;;;;;;;;;;;;