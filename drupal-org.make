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
projects[ctools][version] = 3.2
;; Issue #2820783: Fix Block.php notices and warnings.
projects[ctools][patch][] = https://www.drupal.org/files/issues/2019-02-18/ctools-Block.php_notices_and_warnings-2820783-51-D8.patch

projects[token][type] = module
projects[token][version] = 1.5

projects[page_manager][type] = module
projects[page_manager][version] = 4.0-beta3
;; Issue #2665328: Variants take entity label not the variant title
projects[page_manager][patch][] = https://www.drupal.org/files/issues/2018-12-12/2665328-variants-take-entity-label-87.patch
;; Issue #3033057: Page Manager currently not working with CTools 3.1
projects[page_manager][patch][] = https://www.drupal.org/files/issues/2019-02-23/3033057-13.patch

projects[panels][type] = module
projects[panels][version] = 4.4

projects[bootstrap_layouts][type] = module
projects[bootstrap_layouts][version] = 5.1

projects[layout_builder_restrictions][type] = module
projects[layout_builder_restrictions][version] = 1.5

projects[ds][type] = module
projects[ds][version] = 3.3
;; Issue #2920868: Fix fatal errors when we have missing layouts, on an update.
projects[ds][patch][] = https://www.drupal.org/files/issues/2019-03-03/2920868-12.patch

projects[views_bootstrap][type] = module
projects[views_bootstrap][version] = 3.1

projects[field_group][type] = module
projects[field_group][version] = 3.0-beta1
;; Issue #2921228: Accordion does not work
projects[field_group][patch][] = https://www.drupal.org/files/issues/field_group_accordion-2921228-3.patch

projects[smart_trim][type] = module
projects[smart_trim][version] = 1.1

projects[advanced_text_formatter][type] = module
projects[advanced_text_formatter][version] = 1.0

projects[block_class][type] = module
projects[block_class][version] = 1.0

projects[menu_block][type] = module
projects[menu_block][version] = 1.5

projects[extlink][type] = module
projects[extlink][version] = 1.1

projects[linkit][type] = module
projects[linkit][version] = 4.3

projects[image_resize_filter][type] = module
projects[image_resize_filter][version] = 1.0-beta1

projects[views_infinite_scroll][type] = module
projects[views_infinite_scroll][version] = 1.5

projects[embed][type] = module
projects[embed][version] = 1.0

projects[entity][type] = module
projects[entity][version] = 1.0-rc2

projects[entity_clone][type] = module
projects[entity_clone][version] = 1.0-beta3

projects[entity_browser][type] = module
projects[entity_browser][version] = 2.1
;; Issue #2865928: The View widget should filter based on field settings.
projects[entity_browser][patch][] = https://www.drupal.org/files/issues/entity-browser-view-context-2865928-14.patch
;; Issue #2877751: Inform users how many items they can add to a field that uses an entity browser.
projects[entity_browser][patch][] = https://www.drupal.org/files/issues/2877751-27-8.x-2.x.patch

projects[dropzonejs][type] = module
projects[dropzonejs][version] = 2.0-alpha4

projects[entity_embed][type] = module
projects[entity_embed][version] = 1.0-beta3
;; Issue #2832504: Send the CKEditor instance ID to the embed.preview route.
projects[entity_embed][patch][] = https://www.drupal.org/files/issues/2832504-2.patch
;; Issue #2511404: Image entities/fields embedded using Entity Embed cannot be linked in CKEditor.
projects[entity_embed][patch][] = https://www.drupal.org/files/issues/2018-04-23/25114040-47.patch

projects[inline_entity_form][type] = module
projects[inline_entity_form][version] = 1.0-rc1

projects[media_entity_instagram][type] = module
projects[media_entity_instagram][version] = 2.0-alpha2

projects[media_entity_twitter][type] = module
projects[media_entity_twitter][version] = 2.0-alpha3

projects[media_entity_googledocs][type] = module
projects[media_entity_googledocs][version] = 4.0

projects[crop][type] = module
projects[crop][version] = 2.0-rc1

projects[focal_point][type] = module
projects[focal_point][version] = 1.0
;; Issue #2916562: Broken image preview
projects[focal_point][patch][] = https://www.drupal.org/files/issues/2019-03-30/2916562-39.patch

projects[pathologic][type] = module
projects[pathologic][version] = 1.0-alpha1

projects[ckeditor_bidi][type] = module
projects[ckeditor_bidi][version] = 2.1

projects[ace_editor][type] = module
projects[ace_editor][version] = 1.1

projects[entityqueue][type] = module
projects[entityqueue][version] = 1.0-beta2

projects[entityqueue_form_widget][type] = module
projects[entityqueue_form_widget][version] = 1.0-beta3

projects[imagemagick][type] = module
projects[imagemagick][version] = 2.4

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
projects[config_perms][version] = 2.0-beta2

projects[roleassign][type] = module
projects[roleassign][version] = 1.0-alpha2

projects[admin_toolbar][type] = module
projects[admin_toolbar][version] = 1.27

projects[adminimal_admin_toolbar][type] = module
projects[adminimal_admin_toolbar][version] = 1.9

projects[tour_ui][type] = module
projects[tour_ui][version] = 1.0-beta2

projects[tour_builder][type] = module
projects[tour_builder][version] = 1.0-alpha1

projects[responsive_preview][type] = module
projects[responsive_preview][version] = 1.0-alpha7

projects[views_bulk_operations][type] = module
projects[views_bulk_operations][version] = 2.5

projects[views_bulk_edit][type] = module
projects[views_bulk_edit][version] = 2.3

projects[revision_log_default][type] = module
projects[revision_log_default][version] = 1.0

projects[webform][type] = module
projects[webform][version] = 5.2

projects[webform_analysis][type] = module
projects[webform_analysis][version] = 1.0-beta7

projects[webform_views][type] = module
projects[webform_views][version] = 5.0-alpha7

projects[default_content][type] = module
projects[default_content][version] = 1.0-alpha8
;; Issue #2900089: Invalid translation language error when selected installation language does not match demo content language
projects[default_content][patch][] = https://www.drupal.org/files/issues/2900089-14.patch
;; Issue #2886350: Allow export of all site content.
projects[default_content][patch][] = https://www.drupal.org/files/issues/default_content-export_all_content-2886350-2-D8.patch

projects[better_normalizers][type] = module
projects[better_normalizers][version] = 1.0-beta3

projects[content_lock][type] = module
projects[content_lock][version] = 1.0-alpha8

projects[node_edit_protection][type] = module
projects[node_edit_protection][version] = 1.0-alpha1

projects[rabbit_hole][type] = module
projects[rabbit_hole][version] = 1.0-beta6

projects[fast_404][type] = module
projects[fast_404][version] = 1.0-alpha4

projects[mailsystem][type] = module
projects[mailsystem][version] = 4.1

projects[swiftmailer][type] = module
projects[swiftmailer][version] = 1.0-beta2

projects[smtp][type] = module
projects[smtp][version] = 1.0-beta4

projects[length_indicator][type] = module
projects[length_indicator][version] = 1.0-rc3
;; Issue #3048286: Add cursor position direction support for RTL
projects[length_indicator][patch][] = https://www.drupal.org/files/issues/2019-04-15/3048286-3.patch

projects[maxlength][type] = module
projects[maxlength][version] = 1.0-beta2

projects[menu_position][type] = module
projects[menu_position][version] = 1.0-alpha1

projects[mail_edit][type] = module
projects[mail_edit][version] = 1.x-dev

projects[taxonomy_access_fix][type] = module
projects[taxonomy_access_fix][version] = 2.6

projects[taxonomy_menu][type] = module
projects[taxonomy_menu][version] = 3.4
;; Issue #2939143: Fixed Undefined method TaxonomyMenu::generateTaxonomyLinks()
projects[taxonomy_menu][patch][] = https://www.drupal.org/files/issues/2018-12-23/2939143-10.patch

projects[better_exposed_filters][type] = module
projects[better_exposed_filters][version] = 3.0-alpha6

projects[autocomplete_deluxe][type] = module
projects[autocomplete_deluxe][version] = 1.0-beta1

projects[link_attributes][type] = module
projects[link_attributes][version] = 1.6

projects[paragraphs[type] = module
projects[paragraphs][version] = 1.8
;; Issue #2924774: Let Editors add/delete/clone paragraphs When [Editing a translation]
projects[paragraphs][patch][] = https://www.drupal.org/files/issues/2018-06-03/2924774-29.patch

projects[paragraphs_previewer][type] = module
projects[paragraphs_previewer][version] = 1.4
;; Issue #2904917: Make paragraph previewer work with new UI/UX improvement patch
projects[paragraphs_previewer][patch][] = https://www.drupal.org/files/issues/2019-02-20/2904917-8.patch

projects[paragraphs_features][type] = module
projects[paragraphs_features][version] = 1.4

projects[paragraphs_asymmetric_translation_widgets][type] = module
projects[paragraphs_asymmetric_translation_widgets][version] = 1.0-beta1

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
projects[charts][version] = 3.0-beta3

projects[google_analytics_reports][type] = module
projects[google_analytics_reports][version] = 3.0-beta2

projects[login_destination][type] = module
projects[login_destination][version] = 1.0-alpha2

projects[betterlogin][type] = module
projects[betterlogin][version] = 1.2

projects[social_api][type] = module
projects[social_api][version] = 2.0-beta5

projects[social_auth][type] = module
projects[social_auth][version] = 2.0-beta6

projects[social_auth_google][type] = module
projects[social_auth_google][version] = 2.0-beta4
;; Issue #3034353: Change the Google+ logo to Google accounts as Google shutdown Google+
projects[social_auth_google][patch][] = https://www.drupal.org/files/issues/2019-02-20/3034353-2.patch

projects[social_auth_facebook][type] = module
projects[social_auth_facebook][version] = 2.0-beta4

projects[social_auth_twitter][type] = module
projects[social_auth_twitter][version] = 2.0-alpha3

projects[social_auth_linkedin][type] = module
projects[social_auth_linkedin][version] = 2.0-beta3

projects[ckeditor_media_embed][type] = module
projects[ckeditor_media_embed][version] = 1.3
;; Issue #2900313: Add ability to embed tweets and other rich content in WYSIWYG
projects[ckeditor_media_embed][patch][] = https://www.drupal.org/files/issues/embed_rich_content_in_WYSIWYG-2900313-2.patch

projects[styleguide][type] = module
projects[styleguide][version] = 1.0-alpha3

projects[pathauto][type] = module
projects[pathauto][version] = 1.4

projects[redirect][type] = module
projects[redirect][version] = 1.3

projects[metatag][type] = module
projects[metatag][version] = 1.8

projects[schema_metatag][type] = module
projects[schema_metatag][version] = 1.3

projects[simple_sitemap][type] = module
projects[simple_sitemap][version] = 3.1

projects[google_analytics][type] = module
projects[google_analytics][version] = 2.4 

projects[yoast_seo][type] = module
projects[yoast_seo][version] = 1.5

projects[l10n_client][type] = module
projects[l10n_client][version] = 1.x-dev

projects[username_enumeration_prevention][type] = module
projects[username_enumeration_prevention][version] = 1.0-beta2

projects[password_policy][type] = module
projects[password_policy][version] = 3.0-alpha4
;; Issue #3032549: Fix Password policy module issue with saving constraint
projects[password_policy][patch][] = https://www.drupal.org/files/issues/2019-04-28/3032549-18.patch

projects[seckit][type] = module
projects[seckit][version] = 1.1

projects[security_review][type] = module
projects[security_review][version] = 1.x-dev

projects[honeypot][type] = module
projects[honeypot][version] = 1.29

projects[shield][type] = module
projects[shield][version] = 1.2

projects[captcha][type] = module
projects[captcha][version] = 1.0-beta1

projects[recaptcha][type] = module
projects[recaptcha][version] = 2.4

projects[search_api][type] = module
projects[search_api][version] = 1.13

projects[blazy][type] = module
projects[blazy][version] = 2.0-rc3

projects[slick][type] = module
projects[slick][version] = 2.0-rc3

projects[slick_views][type] = module
projects[slick_views][version] = 2.0

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
projects[drd_agent][version] = 3.8

projects[libraries_ui][type] = module
projects[libraries_ui][version] = 1.0

projects[devel][type] = module

projects[update_helper][type] = module
projects[update_helper][version] = 1.0
;; Issue #3024165: [PATCH] Enhancements, Better messages for the unable to apply updates, drush command and removed the Mark all updates as successful on install
projects[update_helper][patch][] = https://www.drupal.org/files/issues/2019-05-19/3024165-31.patch

projects[checklistapi][type] = module
projects[checklistapi][version] = 1.10

;;;;;;;;;;;;;;;;;;;;;
;; Contrib themes
;;;;;;;;;;;;;;;;;;;;;

projects[bootstrap][type] = theme
projects[bootstrap][version] = 3.19

projects[bootstrap_barrio][type] = theme
projects[bootstrap_barrio][version] = 4.22

projects[adminimal_theme][type] = theme
projects[adminimal_theme][version] = 1.5

;;;;;;;;;;;;;;;;;;;;;
;; General Public contributed modules.
;;;;;;;;;;;;;;;;;;;;;

projects[anchor_link][type] = module
projects[anchor_link][version] = 1.6

projects[entity_browser_enhanced][type] = module
projects[entity_browser_enhanced][version] = 1.0-rc4

projects[vmi][type] = module
projects[vmi][version] = 2.2

projects[total_control][type] = module
projects[total_control][version] = 2.0-alpha4
;; Issue #2935351: Fixed the issue when Enabled with multilingual of Translatable Markup for Invalid Argument Exception: $string (Array) must be a string.
projects[total_control][patch][] = https://www.drupal.org/files/issues/2935351-2.patch

;;;;;;;;;;;;;;;;;;;;;
;; Varbase public contributed modules.
;;;;;;;;;;;;;;;;;;;;;

projects[varbase_core][type] = module
projects[varbase_core][version] = 6.17

projects[varbase_media][type] = module
projects[varbase_media][version] = 6.11

projects[varbase_bootstrap_paragraphs][type] = module
projects[varbase_bootstrap_paragraphs][version] = 6.6

projects[varbase_editor][type] = module
projects[varbase_editor][version] = 6.3

projects[varbase_landing][type] = module
projects[varbase_landing][version] = 6.2

projects[varbase_search][type] = module
projects[varbase_search][version] = 6.2

projects[varbase_seo][type] = module
projects[varbase_seo][version] = 6.3

projects[varbase_heroslider_media][type] = module
projects[varbase_heroslider_media][version] = 6.7

projects[varbase_carousels][type] = module
projects[varbase_carousels][version] = 6.2

projects[varbase_total_control][type] = module
projects[varbase_total_control][version] = 6.4

projects[varbase_auth][type] = module
projects[varbase_auth][version] = 6.4

projects[varbase_blog][type] = module
projects[varbase_blog][version] = 6.2

projects[varbase_styleguide][type] = module
projects[varbase_styleguide][version] = 6.1

projects[varbase_email][type] = module
projects[varbase_email][version] = 6.0-alpha1

;;;;;;;;;;;;;;;;;;;;;
;; Varbase public contributed themes.
;;;;;;;;;;;;;;;;;;;;;

projects[vartheme][type] = theme
projects[vartheme][version] = 6.6

projects[vartheme_bs4][type] = theme
projects[vartheme_bs4][version] = 6.0-rc2

projects[vartheme_admin][type] = theme
projects[vartheme_admin][version] = 6.6

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
libraries[ace][download][url] = "http://github.com/ajaxorg/ace-builds/archive/v1.4.4.tar.gz"
libraries[ace][destination] = "libraries"
