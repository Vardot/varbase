api = 2
core = 8.x

;;;;;;;;;;;;;;;;;;;;;
;; Utilities contrib modules
;;;;;;;;;;;;;;;;;;;;;

projects[config_update][type] = "module"
projects[config_update][version] = "1.x-dev"
projects[config_update][subdir] = "contrib/utilities"
projects[config_update][download][type] = "git"
projects[config_update][download][branch] = "8.x-1.x"

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
