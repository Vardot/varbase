api = 2
core = 8.x

; Defaults
defaults[projects][subdir] = "contrib"

;;;;;;;;;;;;;;;;;;;;;
;; Contrib modules
;;;;;;;;;;;;;;;;;;;;;

projects[config_update][type] = module
projects[config_update][version] = 1.6

projects[config_filter][type] = module
projects[config_filter][version] = 1.4

projects[config_ignore][type] = module
projects[config_ignore][version] = 2.1

projects[ctools][type] = module
projects[ctools][version] = 3.0
;; Issue #2820783: Fix Block.php notices and warnings.
projects[ctools][patch][] = https://www.drupal.org/files/issues/fixblockpager-2820783-27.patch

projects[token][type] = module
projects[token][version] = 1.5

projects[page_manager][type] = module
projects[page_manager][version] = 4.0-beta3

projects[panels][type] = module
projects[panels][version] = 4.3

projects[bootstrap_layouts][type] = module
projects[bootstrap_layouts][version] = 5.1

projects[layout_builder_restrictions][type] = module
projects[layout_builder_restrictions][version] = 1.3

projects[ds][type] = module
projects[ds][version] = 3.2
;; Issue #2920868: Fixed fatal errors when we have missing layouts, on an update.
projects[ds][patch][] = https://www.drupal.org/files/issues/error-when-layout-is-removed-2920868-4.patch
;; Issue #2966959: Fix a DS issue on a Value Conflict with Layout Builder.
projects[ds][patch][] = https://www.drupal.org/files/issues/2018-04-27/2966959-ds-namespace_form_for_layout_builder-4.patch

projects[views_bootstrap][type] = module
projects[views_bootstrap][version] = 3.1

projects[field_group][type] = module
projects[field_group][version] = 3.0-beta1
;; Issue #2921228: Accordion does not work
projects[field_group][patch][] = https://www.drupal.org/files/issues/field_group_accordion-2921228-3.patch

projects[smart_trim][type] = module
projects[smart_trim][version] = 1.1

projects[advanced_text_formatter][type] = module
projects[advanced_text_formatter][version] = 1.0-beta3

projects[block_class][type] = module
projects[block_class][version] = 1.0

projects[menu_block][type] = module
projects[menu_block][version] = 1.5

projects[extlink][type] = module
projects[extlink][version] = 1.1

projects[linkit][type] = module
projects[linkit][version] = 4.3

projects[image_resize_filter][type] = module
projects[image_resize_filter][download][url] = https://git.drupal.org/project/image_resize_filter.git
projects[image_resize_filter][download][revision] = c3f4b23b02005859092aaff746b9f21b794adc58
projects[image_resize_filter][download][branch] = 8.x-1.x

projects[views_infinite_scroll][type] = module
projects[views_infinite_scroll][version] = 1.5

projects[embed][type] = module
projects[embed][version] = 1.0

projects[entity][type] = module
projects[entity][version] = 1.0-rc1

projects[entity_clone][type] = module
projects[entity_clone][version] = 1.0-beta1
;; Issue #2743379: Clone operation shows regardless of permission.
projects[entity_clone][patch][] = https://www.drupal.org/files/issues/2018-08-26/2743379-18.patch

projects[entity_browser][type] = module
projects[entity_browser][version] = 2.0
;; Issue #2865928: The View widget should filter based on field settings.
projects[entity_browser][patch][] = https://www.drupal.org/files/issues/entity-browser-view-context-2865928-14.patch
;; Issue #2877751: Inform users how many items they can add to a field that uses an entity browser.
projects[entity_browser][patch][] = https://www.drupal.org/files/issues/2877751-27-8.x-2.x.patch

projects[dropzonejs][type] = module
projects[dropzonejs][version] = 2.0-alpha3

projects[entity_embed][type] = module
projects[entity_embed][version] = 1.0-beta2
;; Issue #2832504 - Send the CKEditor instance ID to the embed.preview route.
projects[entity_embed][patch][] = https://www.drupal.org/files/issues/2832504-2.patch
;; Issue #2511404: Image entities/fields embedded using Entity Embed cannot be linked in CKEditor.
projects[entity_embed][patch][] = https://www.drupal.org/files/issues/2018-04-23/25114040-47.patch

projects[inline_entity_form][type] = module
projects[inline_entity_form][version] = 1.0-rc1

projects[media_entity_instagram][type] = module
projects[media_entity_instagram][version] = 2.0-alpha2

projects[media_entity_twitter][type] = module
projects[media_entity_twitter][version] = 2.0-alpha2

projects[media_entity_googledocs][type] = module
projects[media_entity_googledocs][version] = 4.0

projects[crop][type] = module
projects[crop][version] = 2.0-rc1

projects[focal_point][type] = module
projects[focal_point][version] = 1.0-beta6
;; Issue #2916562: Broken image preview
projects[focal_point][patch][] = https://www.drupal.org/files/issues/2916562-16.patch

projects[pathologic][type] = module
projects[pathologic][version] = 1.0-alpha1

projects[ckeditor_bidi][type] = module
projects[ckeditor_bidi][version] = 2.1

projects[ace_editor][type] = module
projects[ace_editor][version] = 1.1

projects[entityqueue][type] = module
projects[entityqueue][version] = 1.0-alpha8

projects[entityqueue_form_widget][type] = module
projects[entityqueue_form_widget][version] = 1.0-beta3

projects[imagemagick][type] = module
projects[imagemagick][version] = 2.3

projects[imageapi_optimize][type] = module
projects[imageapi_optimize][version] = 2.0-alpha4

projects[ultimate_cron][type] = module
projects[ultimate_cron][version] = 2.0-alpha4

projects[persistent_login][type] = module
projects[persistent_login][version] = 1.1
;; Issue #2899530: Hide user^s local task
projects[persistent_login][patch][] = https://www.drupal.org/files/issues/persistent_login-user_task_permission-2899530-6.patch

projects[userprotect][type] = module
projects[userprotect][version] = 1.0

projects[config_perms][type] = module
projects[config_perms][version] = 2.0-beta1

projects[roleassign][type] = module
projects[roleassign][version] = 1.0-alpha2

projects[admin_toolbar][type] = module
projects[admin_toolbar][version] = 1.25

projects[adminimal_admin_toolbar][type] = module
projects[adminimal_admin_toolbar][version] = 1.9

projects[tour_ui][type] = module
projects[tour_ui][version] = 1.0-beta2 

projects[tour_builder][type] = module
projects[tour_builder][download][url] = https://git.drupal.org/project/tour_builder.git
projects[tour_builder][download][revision] = d70e898949b7ec4095efb391a0dbec56d0117558
projects[tour_builder][download][branch] = 8.x-1.x

projects[responsive_preview][type] = module
projects[responsive_preview][version] = 1.0-alpha7

projects[views_bulk_operations][type] = module
projects[views_bulk_operations][version] = 2.4

projects[views_bulk_edit][type] = module
projects[views_bulk_edit][version] = 2.2

projects[revision_log_default][type] = module
projects[revision_log_default][version] = 1.0

projects[webform][type] = module
projects[webform][version] = 5.1

projects[webform_analysis][type] = module
projects[webform_analysis][version] = 1.0-beta7

projects[webform_views][type] = module
projects[webform_views][version] = 5.0-alpha6

projects[default_content][type] = module
projects[default_content][version] = 1.0-alpha7
;; Issue #2900089: Invalid translation language error when selected installation language does not match demo content language
projects[default_content][patch][] = https://www.drupal.org/files/issues/2900089-14.patch
;; Issue #2886350: Allow export of all site content.
projects[default_content][patch][] = https://www.drupal.org/files/issues/default_content-export_all_content-2886350-2-D8.patch

projects[better_normalizers][type] = module
projects[better_normalizers][version] = 1.0-beta3

projects[content_lock][type] = module
projects[content_lock][version] = 1.0-alpha8

projects[node_edit_protection][type] = module
projects[node_edit_protection][download][url] = https://git.drupal.org/project/node_edit_protection.git
projects[node_edit_protection][download][revision] = 902339c08222f838030c07aaea23bdc51ababebd
projects[node_edit_protection][download][branch] = 8.x-1.x
;; #2941962: Fixed Warning: array_search() expects parameter 2 to be array.
projects[node_edit_protection][patch][] = https://www.drupal.org/files/issues/2018-05-16/warning-array-search-2941962-4.patch

projects[rabbit_hole][type] = module
projects[rabbit_hole][version] = 1.0-beta4
;; Issue #2961738: Ensure getOperation method exists on form":
projects[rabbit_hole][patch][] = https://www.drupal.org/files/issues/2018-05-10/rabbit_hole-instance_of_check-2961738-5.patch

projects[fast_404][type] = module
projects[fast_404][version] = 1.0-alpha4

projects[mailsystem][type] = module
projects[mailsystem][version] = 4.1

projects[smtp][type] = module
projects[smtp][version] = 1.0-beta4

projects[maxlength][type] = module
projects[maxlength][version] = 1.0-beta2

projects[menu_position][type] = module
projects[menu_position][version] = 1.0-alpha1

projects[mail_edit][type] = module
projects[mail_edit][download][url] = https://git.drupal.org/project/mail_edit.git
projects[mail_edit][download][revision] = bcd0041830d8581b36e6211f0c8eabd8caf9652b
projects[mail_edit][download][branch] = 8.x-1.x

projects[taxonomy_access_fix][type] = module
projects[taxonomy_access_fix][version] = 2.6

projects[taxonomy_menu][type] = module
projects[taxonomy_menu][version] = 3.4
;; Issue #2939143: Fixed Undefined method TaxonomyMenu::generateTaxonomyLinks()
projects[taxonomy_menu][patch][] = https://www.drupal.org/files/issues/2018-12-23/2939143-10.patch

projects[better_exposed_filters][type] = module
projects[better_exposed_filters][version] = 3.0-alpha5

projects[autocomplete_deluxe][type] = module
projects[autocomplete_deluxe][version] = 1.0-beta1

projects[link_attributes][type] = module
projects[link_attributes][version] = 1.5

projects[paragraphs[type] = module
projects[paragraphs][version] = 1.5
;; Issue #2924774: Let Editors add/delete/clone paragraphs When [Editing a translation]
projects[paragraphs][patch][] = https://www.drupal.org/files/issues/2018-06-03/2924774-29.patch

projects[paragraphs_previewer][type] = module
projects[paragraphs_previewer][version] = 1.2
;; Issue #2904917: Make paragraph previewer work with new UI/UX improvement patch
projects[paragraphs_previewer][patch][] = https://www.drupal.org/files/issues/2904917-2.patch

projects[paragraphs_features][type] = module
projects[paragraphs_features][version] = 1.4

projects[paragraphs_asymmetric_translation_widgets][type] = module
projects[paragraphs_asymmetric_translation_widgets][download][url] = https://git.drupal.org/project/paragraphs_asymmetric_translation_widgets.git
projects[paragraphs_asymmetric_translation_widgets][download][revision] = e676e682fd30c123fff1e863716b6792516bb11a
projects[paragraphs_asymmetric_translation_widgets][download][branch] = 8.x-1.x

projects[color_field][type] = module
projects[color_field][version] = 2.0

projects[entity_reference_revisions][type] = module
projects[entity_reference_revisions][version] = 1.6

projects[viewsreference][type] = module
projects[viewsreference][version] = 2.0-alpha4

projects[libraries][type] = module
projects[libraries][version] = 3.0-alpha1

projects[masonry][type] = module
projects[masonry][version] = 1.0-rc2

projects[charts][type] = module
projects[charts][version] = 3.0-beta2

projects[google_analytics_reports][type] = module
projects[google_analytics_reports][download][url] = https://git.drupal.org/project/google_analytics_reports.git
projects[google_analytics_reports][download][revision] = 2b6bb8efbc7f61ce3c1225638075aa6037b8db44
projects[google_analytics_reports][download][branch] = 8.x-3.x
;; Issue #2850463: Error when saving either google_analytics_reports view
projects[google_analytics_reports][patch][] = https://www.drupal.org/files/issues/error_when_saving-2850463-2.patch
;; Issue #2860399: Warning: htmlspecialchars() expects parameter 1 to be string
projects[google_analytics_reports][patch][] = https://www.drupal.org/files/issues/Fix_message-2860399-5.patch
;; Issue #2932010: Fixed an issue to Not to check Updates or import Fields while the Drupal site MAINTENANCE_MODE is in Install or Update.
projects[google_analytics_reports][patch][] = https://www.drupal.org/files/issues/2932010-4.patch

projects[login_destination][type] = module
projects[login_destination][download][url] = https://git.drupal.org/project/login_destination.git
projects[login_destination][download][revision] = 54be8b89fdc073ca40af6b9b2eeb050e0aeb7908
projects[login_destination][download][branch] = 8.x-1.x
;; Issue #2947616: Fixed SetOptions on null causing error.
projects[login_destination][patch][] = https://www.drupal.org/files/issues/2018-03-09/toolbar_alter_error-2947616-11.patch

projects[betterlogin][type] = module
projects[betterlogin][version] = 1.2

projects[social_api][type] = module
projects[social_api][version] = 2.0-beta4

projects[social_auth][type] = module
projects[social_auth][version] = 2.0-beta4

projects[social_auth_google][type] = module
projects[social_auth_google][version] = 2.0-beta3

projects[social_auth_facebook][type] = module
projects[social_auth_facebook][version] = 2.0-beta3

projects[social_auth_twitter][type] = module
projects[social_auth_twitter][version] = 2.0-alpha2

projects[social_auth_linkedin][type] = module
projects[social_auth_linkedin][version] = 2.0-beta1

projects[ckeditor_media_embed][type] = module
projects[ckeditor_media_embed][version] = 1.3
;; Issue #2900313: Add ability to embed tweets and other rich content in WYSIWYG
projects[ckeditor_media_embed][patch][] = https://www.drupal.org/files/issues/embed_rich_content_in_WYSIWYG-2900313-2.patch

projects[styleguide][type] = module
projects[styleguide][version] = 1.0-alpha3

projects[pathauto][type] = module
projects[pathauto][version] = 1.3

projects[redirect][type] = module
projects[redirect][version] = 1.3

projects[metatag][type] = module
projects[metatag][version] = 1.7

projects[schema_metatag][type] = module
projects[schema_metatag][version] = 1.3

projects[simple_sitemap][type] = module
projects[simple_sitemap][version] = 2.12

projects[google_analytics][type] = module
projects[google_analytics][version] = 2.3

projects[yoast_seo][type] = module
projects[yoast_seo][version] = 1.5

projects[l10n_client][type] = module
projects[l10n_client][download][url] = https://git.drupal.org/project/l10n_client.git
projects[l10n_client][download][revision] = 9bf8d597732870bdca301512c71b6e5d74d48db2
projects[l10n_client][download][branch] = 8.x-1.x
;; Issue #2867460: Incompatible with this version of Drupal core ~8.0
projects[l10n_client][patch][] = https://www.drupal.org/files/issues/2867460-2.patch
;; Issue #2872668: User error: 0 is an invalid render array key":
projects[l10n_client][patch][] = https://www.drupal.org/files/issues/l10n_client-hook_toolbar-fix-2872668-3.patch

projects[username_enumeration_prevention][type] = module
projects[username_enumeration_prevention][version] = 1.0-beta2

projects[password_policy][type] = module
projects[password_policy][version] = 3.0-alpha4

projects[seckit][type] = module
projects[seckit][version] = 1.1

projects[security_review][type] = module
projects[security_review][download][url] = https://git.drupal.org/project/security_review.git
projects[security_review][download][revision] = 35ebae445bb260e961e47c4c58efe7c50c228999
projects[security_review][download][branch] = 8.x-1.x

projects[honeypot][type] = module
projects[honeypot][version] = 1.29

projects[shield][type] = module
projects[shield][version] = 1.2

projects[captcha][type] = module
projects[captcha][version] = 1.0-beta1

projects[recaptcha][type] = module
projects[recaptcha][version] = 2.3

projects[search_api][type] = module
projects[search_api][version] = 1.11
;; Issue #2931562: Fixed the Notice: Undefined index: total When we enable the module in the installation step.
projects[search_api][patch][] = https://www.drupal.org/files/issues/2931562-13--undefined_total_in_task_manager_batch_finish.patch

projects[blazy][type] = module
projects[blazy][version] = 1.0-rc4

projects[slick][type] = module
projects[slick][version] = 1.1

projects[slick_views][type] = module
projects[slick_views][version] = 1.0

projects[slick_media][type] = module
projects[slick_media][version] = 2.0-alpha3

;;;;;;;;;;;;;;;;;;;;;
;; Development contrib modules
;;;;;;;;;;;;;;;;;;;;;

projects[features][type] = module
projects[features][version] = 3.8

projects[coffee][type] = module
projects[coffee][version] = 1.0-beta2
;; Issue #2815381: Coffee breaks whole page when using right to left (rtl) languages in drupal 8
projects[coffee][patch][] = https://www.drupal.org/files/issues/coffee-coffee_breaks_page_with_rtl-2815381-6.patch
;; Issue #2872093: Coffee css fixes in RTL
projects[coffee][patch][] = https://www.drupal.org/files/issues/2872093-10.patch

projects[diff][type] = module
projects[diff][version] = 1.0-rc2

projects[masquerade][type] = module
projects[masquerade][version] = 2.0-beta2

projects[menu_admin_per_menu][type] = module
projects[menu_admin_per_menu][version] = 1.0

projects[drd_agent][type] = module
projects[drd_agent][version] = 3.7

projects[libraries_ui][type] = module
projects[libraries_ui][version] = 1.0

projects[devel][type] = module
projects[devel][version] = 1.2

;;;;;;;;;;;;;;;;;;;;;
;; Contrib themes
;;;;;;;;;;;;;;;;;;;;;

projects[bootstrap][type] = theme
projects[bootstrap][version] = 3.17

projects[adminimal_theme][type] = theme
projects[adminimal_theme][version] = 1.4

;;;;;;;;;;;;;;;;;;;;;
;; General Public contributed modules.
;;;;;;;;;;;;;;;;;;;;;

projects[anchor_link][type] = module
projects[anchor_link][version] = 1.6

projects[entity_browser_enhanced][type] = module
projects[entity_browser_enhanced][version] = 1.0-rc3

projects[vmi][type] = module
projects[vmi][version] = 2.1

projects[total_control][type] = module
projects[total_control][version] = 2.0-alpha4
;; Issue #2935351: Fixed the issue when Enabled with multilingual of Translatable Markup for Invalid Argument Exception: $string (Array) must be a string.
projects[total_control][patch][] = https://www.drupal.org/files/issues/2935351-2.patch

;;;;;;;;;;;;;;;;;;;;;
;; Varbase public contributed modules.
;;;;;;;;;;;;;;;;;;;;;

projects[varbase_core][type] = module
projects[varbase_core][version] = 6.x-dev

projects[varbase_media][type] = module
projects[varbase_media][version] = 6.x-dev

projects[varbase_bootstrap_paragraphs][type] = module
projects[varbase_bootstrap_paragraphs][version] = 6.x-dev

projects[varbase_editor][type] = module
projects[varbase_editor][version] = 6.x-dev

projects[varbase_landing][type] = module
projects[varbase_landing][version] = 6.x-dev

projects[varbase_search][type] = module
projects[varbase_search][version] = 6.x-dev

projects[varbase_seo][type] = module
projects[varbase_seo][version] = 6.x-dev

projects[varbase_heroslider_media][type] = module
projects[varbase_heroslider_media][version] = 6.x-dev

projects[varbase_carousels][type] = module
projects[varbase_carousels][version] = 6.x-dev

projects[varbase_total_control][type] = module
projects[varbase_total_control][version] = 6.x-dev

projects[varbase_auth][type] = module
projects[varbase_auth][version] = 6.x-dev

projects[varbase_blog][type] = module
projects[varbase_blog][version] = 6.x-dev

projects[varbase_styleguide][type] = module
projects[varbase_styleguide][version] = 6.x-dev

;;;;;;;;;;;;;;;;;;;;;
;; Varbase public contributed themes.
;;;;;;;;;;;;;;;;;;;;;

projects[vartheme][type] = theme
projects[vartheme][version] = 6.x-dev

projects[vartheme_admin][type] = theme
projects[vartheme_admin][version] = 6.x-dev

;;;;;;;;;;;;;;;;;;;;;
;; Libraries
;;;;;;;;;;;;;;;;;;;;;

libraries[dropzone][download][type] = get
libraries[dropzone][download][url] = "https://github.com/enyo/dropzone/archive/v4.3.0.tar.gz"
libraries[dropzone][destination] = "libraries"

libraries[blazy][download][type] = get
libraries[blazy][download][url] = "https://github.com/dinbror/blazy/archive/1.8.2.tar.gz"
libraries[blazy][destination] = "libraries"

libraries[slick][download][type] = get
libraries[slick][download][url] = "https://github.com/kenwheeler/slick/archive/v1.8.1.tar.gz"
libraries[slick][destination] = "libraries"

libraries[ace][directory_name] = "ace"
libraries[ace][download][type] = "get"
libraries[ace][download][url] = "http://github.com/ajaxorg/ace-builds/archive/v1.3.3.tar.gz"
libraries[ace][destination] = "libraries"
