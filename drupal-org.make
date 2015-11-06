; A make file to specify Varbase distro packages
; These projects are dependencies for profile or for features included in the profile,
; some packages are added as a suggestion with their patches or being very popular
api = 2
core = 7.x

;;;;;;;;;;;;;;;;;;;;;
;; Basic contributed modules (Varbase core dependencies)
;;;;;;;;;;;;;;;;;;;;;

projects[better_exposed_filters][version] = 3.2
projects[better_exposed_filters][subdir] = contrib

projects[block_class][version] = 2.1
projects[block_class][subdir] = contrib

projects[breakpoints][version] = 1.3
projects[breakpoints][subdir] = contrib

projects[captcha][version] = 1.3
projects[captcha][subdir] = contrib

projects[ctools][version] = 1.9
projects[ctools][subdir] = contrib
projects[ctools][patch][1910608] = "http://www.drupal.org/files/issues/views_content-keyword-substitution-1910608-33.patch"

projects[config_perms][version] = 2.1
projects[config_perms][subdir] = contrib

projects[context][version] = 3.6
projects[context][subdir] = contrib

projects[date][version] = 2.9
projects[date][subdir] = contrib
projects[date][patch][2469189] =  "http://www.drupal.org/files/issues/date-show_remaining_days_notice-2469189-1.patch"

projects[defaultconfig][version] = 1.0-alpha11
projects[defaultconfig][subdir] = contrib
projects[defaultconfig][patch][1900574] =  "http://www.drupal.org/files/issues/1900574.defaultconfig.undefinedindex_13.patch"
projects[defaultconfig][patch][2008178] =  "http://www.drupal.org/files/issues/defaultconfig-rebuild-2008178-14.patch"

projects[diff][version] = 3.2
projects[diff][subdir] = contrib

projects[ds][version] = 2.11
projects[ds][subdir] = contrib

projects[ds_bootstrap_layouts][version] = 3.1
projects[ds_bootstrap_layouts][subdir] = contrib

projects[elements][version] = 1.4
projects[elements][subdir] = contrib

projects[email][version] = 1.3
projects[email][subdir] = contrib

projects[entity][version] = 1.6
projects[entity][subdir] = contrib

projects[entityreference][type] = module
projects[entityreference][subdir] = contrib
projects[entityreference][version] = "1.x-dev"
projects[entityreference][download][type] = "git"
projects[entityreference][download][url] = "http://git.drupal.org/project/entityreference.git"
projects[entityreference][download][revision] = "ab62b9a1d2e8390a85e7df29441c68e624ce76e8"

projects[epsacrop][version] = 2.3
projects[epsacrop][subdir] = contrib

projects[extlink][version] = 1.18
projects[extlink][subdir] = contrib

projects[features][type] = module
projects[features][subdir] = contrib
projects[features][version] = "2.x-dev"
projects[features][download][type] = "git"
projects[features][download][url] = "http://git.drupal.org/project/features.git"
projects[features][download][revision] = "4184b9b169c150f712f15b2cf51686cd56894927"
projects[features][patch][2324973] =  "http://www.drupal.org/files/issues/features-2324973-undefined_property_status-1_0.patch"

projects[features_extra][version] = 1.0
projects[features_extra][subdir] = contrib

projects[features_override][version] = 2.0-rc3
projects[features_override][subdir] = contrib

projects[field_collection][version] = 1.0-beta10
projects[field_collection][subdir] = contrib
projects[field_collection][patch][1063434] =  "http://www.drupal.org/files/issues/field_collection-feeds-1063434-153.patch"
projects[field_collection][patch][2599248] =  "http://www.drupal.org/files/issues/field-collection-2599248-2.patch"

projects[field_group][version] = 1.4
projects[field_group][subdir] = contrib

projects[fieldable_panels_panes][version] = 1.7
projects[fieldable_panels_panes][subdir] = contrib

projects[file_entity][version] = 2.0-beta2
projects[file_entity][subdir] = contrib
projects[file_entity][patch][2533816] = "http://www.drupal.org/files/issues/file_entity-notice_undefined_offset_menu_translate-2533816-4.patch"
projects[file_entity][patch][1901566] = "http://www.drupal.org/files/issues/resolve_the_allowed-1901566-18.patch"
projects[file_entity][patch][2312603] = "http://www.drupal.org/files/issues/fix_entity_api_create_access-2312603-8.patch"

projects[filefield_paths][version] = 1.0-rc2
projects[filefield_paths][subdir] = contrib

projects[flexslider][version] = 2.0-rc1
projects[flexslider][subdir] = contrib

projects[fontawesome][version] = 2.5
projects[fontawesome][subdir] = contrib

projects[icon][version] = 1.0-beta6
projects[icon][subdir] = contrib

projects[image_resize_filter][version] = 1.16
projects[image_resize_filter][subdir] = contrib
projects[image_resize_filter][patch][2554507] = "http://www.drupal.org/files/issues/problem_handling_images-2554507-2.patch"

projects[jquery_update][version] = 3.0-alpha3
projects[jquery_update][subdir] = contrib

projects[job_scheduler][version] = 2.0-alpha3
projects[job_scheduler][subdir] = contrib

projects[libraries][version] = 2.2
projects[libraries][subdir] = contrib
projects[libraries][patch][1783598] = "http://www.drupal.org/files/issues/inherited-profiles-1783598-5.patch"

projects[link][version] = 1.3
projects[link][subdir] = contrib

projects[linkit][version] = 3.4
projects[linkit][subdir] = contrib

projects[maxlength][version] = 3.2
projects[maxlength][subdir] = contrib

projects[media][type] = module
projects[media][subdir] = contrib
projects[media][version] = "2.x-dev"
projects[media][download][type] = "git"
projects[media][download][url] = "http://git.drupal.org/project/media.git"
projects[media][download][revision] = "cba92a0c1e5e4bb55e96c39cd37eeead2095d6b9"
projects[media][patch][2018075] = "http://www.drupal.org/files/issues/media_filter_float_delegate-2018075-18.patch"
projects[media][patch][2062721] = "http://www.drupal.org/files/issues/media-wysiwyg-override-white-list-2062721-83.patch"
projects[media][patch][2126697] = "http://www.drupal.org/files/issues/media-wysiwyg-alt-title-handling-2126697-64.patch"
projects[media][patch][2148641] = "http://www.drupal.org/files/issues/media-wysiwyg-images-lose-ckeditor-styles-2148641-8.patch"
projects[media][patch][2609244] = "http://www.drupal.org/files/issues/notice_on_file_types-2609244-2.patch"
projects[media][patch][2610058] = "http://www.drupal.org/files/issues/media_internet_fails_to-2610058-2.patch"

projects[menu_block][version] = 2.7
projects[menu_block][subdir] = contrib

projects[menu_position][version] = 1.1
projects[menu_position][subdir] = contrib

projects[node_edit_protection][version] = 1.1
projects[node_edit_protection][subdir] = contrib
projects[node_edit_protection][patch][2262093] = "http://www.drupal.org/files/issues/warning_appears_when_clicking_submit_some_themes-2262093-1.patch"

projects[override_node_options][version] = 1.13
projects[override_node_options][subdir] = contrib

projects[panelizer][type] = module
projects[panelizer][subdir] = contrib
projects[panelizer][version] = "3.x-dev"
projects[panelizer][download][type] = "git"
projects[panelizer][download][url] = "http://git.drupal.org/project/panelizer.git"
projects[panelizer][download][revision] = "2632dae19c5d25a2adb519613828d7a6fedbbd04"
projects[panelizer][patch][2382879] = "http://www.drupal.org/files/issues/can_t_save-2382879-4.patch"
projects[panelizer][patch][2445769] = "http://www.drupal.org/files/issues/panelizer-n2445769-3.patch"

projects[panels][version] = 3.5
projects[panels][subdir] = contrib
projects[panels][patch][2427917] = "http://www.drupal.org/files/issues/panels-mini_panels_blocks_contextual_links-2427917.patch"

projects[panels_bootstrap_layouts][type] = module
projects[panels_bootstrap_layouts][subdir] = contrib
projects[panels_bootstrap_layouts][version] = "3.x-dev"
projects[panels_bootstrap_layouts][download][type] = "git"
projects[panels_bootstrap_layouts][download][url] = "http://git.drupal.org/project/panels_bootstrap_layouts.git"
projects[panels_bootstrap_layouts][download][revision] = "33cb6cdc318bb3073422cd5cf149cdddd97d9148"

projects[recaptcha][version] = 2.0
projects[recaptcha][subdir] = contrib

projects[remember_me][version] = 1.0
projects[remember_me][subdir] = contrib

projects[smart_trim][version] = 1.5
projects[smart_trim][subdir] = contrib
projects[smart_trim][patch][2472565] = "http://www.drupal.org/files/issues/print_summery_only_if-2472565-1.patch"
projects[smart_trim][patch][2041053] = "http://www.drupal.org/files/issues/strip_media_tokens-2041053-7.patch"

projects[strongarm][version] = 2.0
projects[strongarm][subdir] = contrib

projects[taxonomy_access_fix][version] = 2.2
projects[taxonomy_access_fix][subdir] = contrib

projects[token][version] = 1.6
projects[token][subdir] = contrib

projects[variable][version] = 2.5
projects[variable][subdir] = contrib

projects[views][version] = 3.11
projects[views][subdir] = contrib
projects[views][patch][1685144] = "http://www.drupal.org/files/views-1685144-localization-bug_1.patch"
projects[views][patch][1809958] = "http://www.drupal.org/files/issues/views_with_exposed-1809958-28.patch"

projects[views_bootstrap][type] = module
projects[views_bootstrap][subdir] = contrib
projects[views_bootstrap][version] = "3.x-dev"
projects[views_bootstrap][download][type] = "git"
projects[views_bootstrap][download][url] = "http://git.drupal.org/project/views_bootstrap.git"
projects[views_bootstrap][download][revision] = "8025e821a0450a7535cf7257870efe9a37a5713d"

projects[views_bulk_operations][version] = 3.3
projects[views_bulk_operations][subdir] = contrib

projects[webform][version] = 4.11
projects[webform][subdir] = contrib

projects[workbench][version] = 1.2
projects[workbench][subdir] = contrib
projects[workbench][patch][1727284] = "http://www.drupal.org/files/1727284-workbench-contextual.patch"

projects[workbench_moderation][version] = 1.4
projects[workbench_moderation][subdir] = contrib
projects[workbench_moderation][patch][2308095] = "http://www.drupal.org/files/issues/workbench_moderation-pathauto_alias_issue-2308095-20.patch"
projects[workbench_moderation][patch][1470528] = "http://www.drupal.org/files/issues/workbench_moderation-state-feeds-mapper-1470528-14_0.patch"


;;;;;;;;;;;;;;;;;;;;;
;; Internationalization contributed modules (Internationalization dependencies)
;;;;;;;;;;;;;;;;;;;;;

projects[entity_translation][version] = 1.0-beta4
projects[entity_translation][subdir] = internationalization

projects[i18n][version] = 1.13
projects[i18n][subdir] = internationalization

projects[i18nviews][type] = module
projects[i18nviews][subdir] = internationalization
projects[i18nviews][version] = "3.x-dev"
projects[i18nviews][download][type] = "git"
projects[i18nviews][download][url] = "http://git.drupal.org/project/i18nviews.git"
projects[i18nviews][download][revision] = "fdc8c33f91d4e8161cec5a857da4eec95bf8843e"
projects[i18nviews][download][branch] = "7.x-3.x"

projects[l10n_update][version] = 2.0
projects[l10n_update][subdir] = internationalization

projects[l10n_client][version] = 1.3
projects[l10n_client][subdir] = internationalization

projects[i18n_contrib][version] = 1.0-alpha2
projects[i18n_contrib][subdir] = internationalization


;;;;;;;;;;;;;;;;;;;;;
;; Administration contributed modules (Admin UI Component)
;;;;;;;;;;;;;;;;;;;;;

projects[apps][version] = 1.0
projects[apps][subdir] = admin

projects[admin_views][version] = 1.5
projects[admin_views][subdir] = admin

projects[environment_indicator][version] = 2.8
projects[environment_indicator][subdir] = admin

projects[escape_admin][version] = 1.2
projects[escape_admin][subdir] = admin

projects[fpa][version] = 2.6
projects[fpa][subdir] = admin

projects[mail_edit][version] = 1.1
projects[mail_edit][subdir] = admin

projects[navbar][version] = 1.6
projects[navbar][subdir] = admin

projects[responsive_preview][version] = 1.1
projects[responsive_preview][subdir] = admin
projects[responsive_preview][patch][2175453] = "http://www.drupal.org/files/issues/responsive.patch"

projects[total_control][version] = 2.4
projects[total_control][subdir] = admin


;;;;;;;;;;;;;;;;;;;;;
;; SEO contributed modules (SEO Improvement Modules)
;;;;;;;;;;;;;;;;;;;;;

projects[globalredirect][version] = 1.5
projects[globalredirect][subdir] = seo
projects[globalredirect][patch][2385415] = "http://www.drupal.org/files/issues/globalredirect-prevent_missing_define-2385415.patch"

projects[google_analytics][version] = 2.1
projects[google_analytics][subdir] = seo

projects[imagecache_token][version] = 1.0-rc1
projects[imagecache_token][subdir] = seo

projects[metatag][version] = 1.7
projects[metatag][subdir] = seo

projects[pathauto][version] = 1.3
projects[pathauto][subdir] = seo

; This will be deleted in the next releases.
projects[pathauto_persist][version] = 1.4
projects[pathauto_persist][subdir] = seo

projects[redirect][version] = 1.0-rc3
projects[redirect][subdir] = seo

projects[transliteration][version] = 3.2
projects[transliteration][subdir] = seo

projects[xmlsitemap][version] = 2.2
projects[xmlsitemap][subdir] = seo

;;;;;;;;;;;;;;;;;;;;;
;; Search contributed modules
;;;;;;;;;;;;;;;;;;;;;

projects[search_api][version] = 1.16
projects[search_api][subdir] = search

projects[search_api_db][version] = 1.5
projects[search_api_db][subdir] = search

projects[search_api_solr][version] = 1.9
projects[search_api_solr][subdir] = search


;;;;;;;;;;;;;;;;;;;;;
;; Development contributed modules
;;;;;;;;;;;;;;;;;;;;;

projects[devel][version] = 1.5
projects[devel][subdir] = development

projects[masquerade][version] = 1.0-rc7
projects[masquerade][subdir] = development

projects[module_filter][version] = 2.0
projects[module_filter][subdir] = development

projects[search_krumo][version] = 1.6
projects[search_krumo][subdir] = development


;;;;;;;;;;;;;;;;;;;;;
;; Performance improvement contributed modules
;;;;;;;;;;;;;;;;;;;;;

projects[advagg][version] = 2.16
projects[advagg][subdir] = performance

projects[cache_actions][type] = module
projects[cache_actions][subdir] = performance
projects[cache_actions][version] = "2.x-dev"
projects[cache_actions][download][type] = "git"
projects[cache_actions][download][url] = "http://git.drupal.org/project/cache_actions.git"
projects[cache_actions][download][revision] = "62dd96e4147a0c86ec05027cba1f147f87e13182"

projects[elysia_cron][version] = 2.1
projects[elysia_cron][subdir] = performance

projects[fast_404][type] = module
projects[fast_404][subdir] = performance
projects[fast_404][version] = "1.x-dev"
projects[fast_404][download][type] = "git"
projects[fast_404][download][url] = "http://git.drupal.org/project/fast_404.git"
projects[fast_404][download][revision] = "1df70876b82e3eaa8c56608ea9ebb6b7d8c7cacb"

projects[httprl][type] = module
projects[httprl][subdir] = performance
projects[httprl][version] = "1.x-dev"
projects[httprl][download][type] = "git"
projects[httprl][download][url] = "http://git.drupal.org/project/httprl.git"
projects[httprl][download][revision] = "0c6e226c86266da3db590e7a15b45a421ade3ed7"

projects[memcache][version] = 1.5
projects[memcache][subdir] = performance

;;;;;;;;;;;;;;;;;;;;;
;; Security contributed modules
;;;;;;;;;;;;;;;;;;;;;

projects[username_enumeration_prevention][version] = 1.1
projects[username_enumeration_prevention][subdir] = security

projects[genpass][version] = 1.0
projects[genpass][subdir] = security

projects[security_review][version] = 1.2
projects[security_review][subdir] = security

projects[seckit][version] = 1.9
projects[seckit][subdir] = security


;;;;;;;;;;;;;;;;;;;;;
;; Varbase features
;;;;;;;;;;;;;;;;;;;;;

projects[varbase_editor][type] = module
projects[varbase_editor][version] = "3.x-dev"
projects[varbase_editor][subdir] = features

;;;;;;;;;;;;;;;;;;;;;
;; Base theme
;;;;;;;;;;;;;;;;;;;;;

projects[adminimal_theme][type] = theme
projects[adminimal_theme][version] = 1.23
projects[adminimal_theme][subdir] = contrib

projects[bootstrap][type] = theme
projects[bootstrap][subdir] = contrib
projects[bootstrap][version] = 3.1-beta2
projects[bootstrap][patch][2250349] = "http://www.drupal.org/files/issues/add_new_variables_to-2250349-8.patch"
projects[bootstrap][patch][2407245] = "http://www.drupal.org/files/issues/bootstrap_breadcrumb-2407245-1.patch"
projects[bootstrap][patch][2316655] = "http://www.drupal.org/files/issues/password_strength-2316655-5.patch"
projects[bootstrap][patch][2416485] = "http://www.drupal.org/files/issues/preg_grep_in-2416485-1.patch"
projects[bootstrap][patch][2470115] = "http://www.drupal.org/files/issues/exclude_rtl_css_files-2470115-1.patch"
projects[bootstrap][patch][2404405] = "http://www.drupal.org/files/issues/bootstrap-modal-nav-offset-jslint-2404405-2.patch"


;;;;;;;;;;;;;;;;;;;;;
;; Libraries
;;;;;;;;;;;;;;;;;;;;;

libraries[backbone][download][type] = "get"
libraries[backbone][download][url] = "http://github.com/jashkenas/backbone/archive/1.1.2.tar.gz"

libraries[flexslider][download][type] = "get"
libraries[flexslider][download][url] = "http://github.com/woothemes/FlexSlider/archive/version/2.2.2.tar.gz"

libraries[Jcrop][download][type] = get
libraries[Jcrop][download][url] = "http://github.com/tapmodo/Jcrop/archive/v0.9.12.tar.gz"

libraries[json2][download][type] = get
libraries[json2][download][url] = "http://github.com/douglascrockford/JSON-js/archive/3d7767b6b1f3da363c625ff54e63bbf20e9e83ac.zip"

libraries[modernizr][download][type] = "get"
libraries[modernizr][download][url] = "http://github.com/Modernizr/Modernizr/archive/v2.8.3.tar.gz"

libraries[wvega-timepicker][download][type] = "get"
libraries[wvega-timepicker][download][url] = "http://github.com/wvega/timepicker/archive/1.3.2.tar.gz"

libraries[underscore][download][type] = "get"
libraries[underscore][download][url] = "http://github.com/jashkenas/underscore/archive/1.5.2.tar.gz"
