api = 2
core = 8.x

; Defaults
defaults[projects][subdir] = "contrib"

;;;;;;;;;;;;;;;;;;;;;
;; Contrib modules
;;;;;;;;;;;;;;;;;;;;;

projects[config_update][type] = module
projects[config_update][version] = 1.5

projects[config_filter][type] = module
projects[config_filter][version] = 1.1

projects[config_ignore][type] = module
projects[config_ignore][version] = 2.1

projects[ctools][type] = module
projects[ctools][version] = 3.0
;; Issue #2820783: Fix Block.php notices and warnings.
projects[ctools][patch][] = https://www.drupal.org/files/issues/fixblockpager-2820783-27.patch

projects[token][type] = module
projects[token][version] = 1.1

projects[page_manager][type] = module
projects[page_manager][version] = 4.0-beta2
;; Issue #2624972: No configuration possible in UI for 301, 303, etc. HTTP responses
projects[page_manager][patch][] = https://www.drupal.org/files/issues/page_manager-redirect_location-2624972-30.patch
;; Issue #2665328: Variants take entity label not the variant title
projects[page_manager][patch][] = https://www.drupal.org/files/issues/page_manager-fix_contexts_on_get_title-2665328-64.patch

projects[panels][type] = module
projects[panels][version] = 4.2

projects[panelizer][type] = module
projects[panelizer][version] = 4.0

projects[bootstrap_layouts][type] = module
projects[bootstrap_layouts][version] = 5.1

projects[ds][type] = module
projects[ds][version] = 3.1

projects[views_bootstrap][type] = module
projects[views_bootstrap][download][url] = https://git.drupal.org/project/views_bootstrap.git
projects[views_bootstrap][download][revision] = ec4e7872315db6a7287014b029c3167962647588
projects[views_bootstrap][download][branch] = 8.x-3.x

projects[field_group][type] = module
projects[field_group][version] = 3.0-beta1

projects[smart_trim][type] = module
projects[smart_trim][version] = 1.1

projects[advanced_text_formatter][type] = module
projects[advanced_text_formatter][version] = 1.0-beta3

projects[block_class][type] = module
projects[block_class][version] = 1.0-alpha1

projects[menu_block][type] = module
projects[menu_block][version] = 1.4

projects[extlink][type] = module
projects[extlink][download][url] = https://git.drupal.org/project/extlink.git
projects[extlink][download][revision] = 8a773a6c5519ccb167e18cc39d68551b30b0e4b3
projects[extlink][download][branch] = 8.x-1.x

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
projects[entity][version] = 1.0-beta1

projects[entity_clone[type] = module
projects[entity_clone][download][url] = https://git.drupal.org/project/entity_clone.git
projects[entity_clone][download][revision] = 9265e359bd31bda693dac9ad84ad52fe63531488
projects[entity_clone][download][branch] = 8.x-1.x
;; Issue #2770687: Wrong redirection of page for entity clone module
projects[entity_clone][patch][] = https://www.drupal.org/files/issues/2770687_wrong_redirection_for_entity_9.patch
;; Issue #2800203: Event dispatcher for clone events
projects[entity_clone][patch][] = https://www.drupal.org/files/issues/entity_clone-event_dispatcher-2800203-5.patch
;; Issue #2706639: Support for cloning nodes that have another entities attached
projects[entity_clone][patch][] = https://www.drupal.org/files/issues/entity_clone-attached_entities-2706639-25.patch
;; Issue #2769823: Getting error after clicking on abort clone button
projects[entity_clone][patch][] = https://www.drupal.org/files/issues/entity_clone-abort_clone_causes_fatal_error-2769823-4.patch

projects[entity_browser][type] = module
projects[entity_browser][version] = 1.4

projects[dropzonejs][type] = module
projects[dropzonejs][version] = 1.0-alpha8

projects[entity_embed][type] = module
projects[entity_embed][version] = 1.0-beta2

projects[inline_entity_form][type] = module
projects[inline_entity_form][version] = 1.0-beta1

projects[media_entity][type] = module
projects[media_entity][version] = 1.7

projects[media_entity_document][type] = module
projects[media_entity_document][version] = 1.1

projects[media_entity_image][type] = module
projects[media_entity_image][version] = 1.2

projects[video_embed_field][type] = module
projects[video_embed_field][version] = 1.5

projects[crop][type] = module
projects[crop][version] = 1.5

projects[focal_point][type] = module
projects[focal_point][version] = 1.0-beta5
;; Issue #2915497: Missing schema for focal_point_scale_and_crop effect
projects[focal_point][patch][] = https://www.drupal.org/files/issues/2915497_3.patch
;; Issue #2916562: Broken image preview
projects[focal_point][patch][] = https://www.drupal.org/files/issues/2916562-16.patch

projects[pathologic][type] = module
projects[pathologic][download][url] = https://git.drupal.org/project/pathologic.git
projects[pathologic][download][revision] = 4f9f3fdcf1e0b224c4d8650e383a769f40abf9bf
projects[pathologic][download][branch] = 8.x-1.x
;; Issue #2927759: Remove the Update hooks for D7 present in D8 version of module.
projects[pathologic][patch][] = https://www.drupal.org/files/issues/2927759-8.patch

projects[ckeditor_bidi][type] = module
projects[ckeditor_bidi][version] = 2.1

projects[ace_editor][type] = module
projects[ace_editor][version] = 1.0
;; Issue #2916832: Add support for calling libraries from the current active profile
projects[ace_editor][patch][] = https://www.drupal.org/files/issues/2916832-4.patch

projects[entityqueue][type] = module
projects[entityqueue][version] = 1.0-alpha7
;; Issue #2145441: Option to create Entityqueue tab on Entity pages
projects[entityqueue][patch][] = https://www.drupal.org/files/issues/2145441-32.patch
;; Issue #2825773: Make Contextual links work for views using Entityqueue
projects[entityqueue][patch][] = https://www.drupal.org/files/issues/2825773-23-outside_in_to_settings_tray.patch
;; Issue #2916026: Only users with [Administer entityqueue] should be able to delete entityqueues
projects[entityqueue][patch][] = https://www.drupal.org/files/issues/only-users-with-administer-entityqueue-should-be-able-to-delete-entityqueues-2916026-3.patch
;; Issue #2917308: Only users with [Administer entityqueue] should be able to edit (configure) entityqueues
projects[entityqueue][patch][] = https://www.drupal.org/files/issues/only-users-with-administer-entityqueue-should-be-able-edit-configure-entityqueues-2917308-2.patch

projects[entityqueue_form_widget][type] = module
projects[entityqueue_form_widget][version] = 1.0-beta3

projects[imagemagick][type] = module
projects[imagemagick][version] = 2.2

projects[imageapi_optimize][type] = module
projects[imageapi_optimize][version] = 2.0-alpha3

projects[ultimate_cron][type] = module
projects[ultimate_cron][version] = 2.0-alpha2

projects[persistent_login][type] = module
projects[persistent_login][version] = 1.0-alpha4
;; Issue #2899530: Hide user^s local task
projects[persistent_login][patch][] = https://www.drupal.org/files/issues/persistent_login-user_task_permission-2899530-6.patch

projects[userprotect][type] = module
projects[userprotect][version] = 1.0

projects[config_perms][type] = module
projects[config_perms][version] = 1.1
;; Issue #2877329: When [content_translation, config_translate] module is enabled, And enabled [Custom Permissions], Then we will get  Route custom_perms_select_list_form does not exist
projects[config_perms][patch][] = https://www.drupal.org/files/issues/2877329-16.patch

projects[roleassign][type] = module
projects[roleassign][version] = 1.0-alpha2

projects[admin_toolbar][type] = module
projects[admin_toolbar][version] = 1.22

projects[adminimal_admin_toolbar][type] = module
projects[adminimal_admin_toolbar][version] = 1.5

projects[tour_ui][type] = module
projects[tour_ui][download][url] = https://git.drupal.org/project/tour_ui.git
projects[tour_ui][download][revision] = 5cf793c071aeddea0ecd20d80b541606bfe2aff1
projects[tour_ui][download][branch] = 8.x-1.x

projects[tour_builder][type] = module
projects[tour_builder][download][url] = https://git.drupal.org/project/tour_builder.git
projects[tour_builder][download][revision] = d70e898949b7ec4095efb391a0dbec56d0117558
projects[tour_builder][download][branch] = 8.x-1.x

projects[responsive_preview][type] = module
projects[responsive_preview][version] = 1.0-alpha7

projects[views_bulk_operations][type] = module
projects[views_bulk_operations][version] = 1.0

projects[views_bulk_edit][type] = module
projects[views_bulk_edit][version] = 2.0-beta2

projects[revision_log_default][type] = module
projects[revision_log_default][version] = 1.0

projects[webform][type] = module
projects[webform][version] = 5.0-rc1

projects[default_content][type] = module
projects[default_content][version] = 1.0-alpha7
;; Issue #2900089: Invalid translation language error when selected installation language does not match demo content language
projects[default_content][patch][] = https://www.drupal.org/files/issues/2900089-14.patch

projects[content_lock][type] = module
projects[content_lock][version] = 1.0-alpha4
;; Issue #2907026: Fixed Warning: When we do not have content types yet in the system.
projects[content_lock][patch][] = https://www.drupal.org/files/issues/2907026-7_0.patch

projects[node_edit_protection][type] = module
projects[node_edit_protection][download][url] = https://git.drupal.org/project/node_edit_protection.git
projects[node_edit_protection][download][revision] = 902339c08222f838030c07aaea23bdc51ababebd
projects[node_edit_protection][download][branch] = 8.x-1.x

projects[rabbit_hole][type] = module
projects[rabbit_hole][version] = 1.0-beta4

projects[fast_404][type] = module
projects[fast_404][version] = 1.0-alpha2

projects[mailsystem][type] = module
projects[mailsystem][version] = 4.1

projects[smtp][type] = module
projects[smtp][version] = 1.0-beta3

projects[maxlength][type] = module
projects[maxlength][version] = 1.0-beta1

projects[menu_position][type] = module
projects[menu_position][download][url] = https://git.drupal.org/project/menu_position.git
projects[menu_position][download][revision] = d134276b4bbd08b3c9678943d0225fbef7dd05b5
projects[menu_position][download][branch] = 8.x-1.x

projects[mail_edit][type] = module
projects[mail_edit][download][url] = https://git.drupal.org/project/mail_edit.git
projects[mail_edit][download][revision] = bcd0041830d8581b36e6211f0c8eabd8caf9652b
projects[mail_edit][download][branch] = 8.x-1.x

projects[taxonomy_access_fix][type] = module
projects[taxonomy_access_fix][version] = 2.1

projects[taxonomy_menu][type] = module
projects[taxonomy_menu][download][url] = https://git.drupal.org/project/taxonomy_menu.git
projects[taxonomy_menu][download][revision] = 1103ad0855de4d242364a5b7e74a5c5fc1ce9e02
projects[taxonomy_menu][download][branch] = 8.x-3.x
;; Issue #2939143: Fixed Undefined method TaxonomyMenu::generateTaxonomyLinks()
projects[taxonomy_menu][patch][] = https://www.drupal.org/files/issues/2939143-2.patch

projects[better_exposed_filters][type] = module
projects[better_exposed_filters][version] = 3.0-alpha3

projects[autocomplete_deluxe][type] = module
projects[autocomplete_deluxe][version] = 1.0-beta1

projects[link_attributes][type] = module
projects[link_attributes][version] = 1.2

projects[paragraphs[type] = module
projects[paragraphs][version] = 1.2
;; Issue #2461695: Support translatable paragraph entity reference revision field
projects[paragraphs][patch][] = https://www.drupal.org/files/issues/meta_support-2461695-222.patch
;; Issue #2868155: Add new hooks to allow easier editing of paragraph forms
projects[paragraphs][patch][] = https://www.drupal.org/files/issues/2868155-16.patch
;; Issue #2877927: Show add widget between paragraphs on hover
projects[paragraphs][patch][] = https://www.drupal.org/files/issues/2877927_29.patch
;; Issue #2909416: Hide duplicate action while translating.
projects[paragraphs][patch][] = https://www.drupal.org/files/issues/2909416-2.patch
;; Issue #2924774: Let Editors add/delete/clone paragraphs When [Editing a translation]
projects[paragraphs][patch][] = https://www.drupal.org/files/issues/2924774-4.patch

projects[color_field][type] = module
projects[color_field][version] = 2.0-rc2

projects[entity_reference_revisions][type] = module
projects[entity_reference_revisions][version] = 1.4

projects[viewsreference][type] = module
projects[viewsreference][version] = 2.0-alpha4

projects[masonry][type] = module
projects[masonry][version] = 1.0-rc2

projects[charts][type] = module
projects[charts][version] = 3.0-alpha7

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

projects[betterlogin][type] = module
projects[betterlogin][download][url] = https://git.drupal.org/project/betterlogin.git
projects[betterlogin][download][revision] = f7cf1c5c9ec5e80c6ac0ef04ed605e25495232cd
projects[betterlogin][download][branch] = 8.x-1.x

projects[social_api][type] = module
projects[social_api][version] = 2.0-beta3

projects[social_auth][type] = module
projects[social_auth][version] = 2.0-beta3

projects[social_auth_google][type] = module
projects[social_auth_google][version] = 2.0-beta2

projects[social_auth_facebook][type] = module
projects[social_auth_facebook][version] = 2.0-beta2

projects[social_auth_twitter][type] = module
projects[social_auth_twitter][version] = 2.0-alpha1

projects[social_auth_linkedin][type] = module
projects[social_auth_linkedin][version] = 2.0-alpha2

projects[ckeditor_media_embed][type] = module
projects[ckeditor_media_embed][version] = 1.1
;; Issue #2900313: Add ability to embed tweets and other rich content in WYSIWYG
projects[ckeditor_media_embed][patch][] = https://www.drupal.org/files/issues/embed_rich_content_in_WYSIWYG-2900313-2.patch

projects[paragraphs_previewer][type] = module
projects[paragraphs_previewer][version] = 1.0
;; Issue #2904917: Make paragraph previewer work with new UI/UX improvement patch
projects[paragraphs_previewer][patch][] = https://www.drupal.org/files/issues/2904917-2.patch

projects[material_admin_support][type] = module
projects[material_admin_support][download][url] = https://git.drupal.org/project/material_admin_support.git
projects[material_admin_support][download][revision] = 96ce192c31643faf69d77aca3c68578f778be3bc
projects[material_admin_support][download][branch] = 8.x-1.x

projects[type_style][type] = module
projects[type_style][download][url] = https://git.drupal.org/project/type_style.git
projects[type_style][download][revision] = 486a8ec7c1c7dcd93790ee281c78cfa3dba90d78
projects[type_style][download][branch] = 8.x-1.x

;;;;;;;;;;;;;;;;;;;;;
;; Contrib modules for Varbase SEO.
;;;;;;;;;;;;;;;;;;;;;

projects[pathauto][type] = module
projects[pathauto][version] = 1.0

projects[redirect][type] = module
projects[redirect][version] = 1.0

projects[metatag][type] = module
projects[metatag][version] = 1.4

projects[schema_metatag][type] = module
projects[schema_metatag][version] = 1.0-rc4

projects[simple_sitemap][type] = module
projects[simple_sitemap][version] = 2.11

projects[google_analytics][type] = module
projects[google_analytics][version] = 2.2

projects[yoast_seo][type] = module
projects[yoast_seo][version] = 1.3
;; Issue #2877613 by RajabNatshah: Add [ Text (plain, long) ] filed type [string_log] for yoast seo to use.
projects[yoast_seo][patch][] = https://www.drupal.org/files/issues/2877613-2_0.patch

projects[l10n_client][type] = module
projects[l10n_client][download][url] = https://git.drupal.org/project/l10n_client.git
projects[l10n_client][download][revision] = 9bf8d597732870bdca301512c71b6e5d74d48db2
projects[l10n_client][download][branch] = 8.x-1.x
;; Issue #2867460: Incompatible with this version of Drupal core 8.3.0
projects[l10n_client][patch][] = https://www.drupal.org/files/issues/2867460-2.patch
;; Issue #2872668: User error: 0 is an invalid render array key":
projects[l10n_client][patch][] = https://www.drupal.org/files/issues/l10n_client-hook_toolbar-fix-2872668-3.patch

;;;;;;;;;;;;;;;;;;;;;
;; Contrib modules for Varbase security.
;;;;;;;;;;;;;;;;;;;;;

projects[username_enumeration_prevention][type] = module
projects[username_enumeration_prevention][version] = 1.0-beta1
;; Issue #2871931: hook_requirements error on install phase
projects[username_enumeration_prevention][patch][] = https://www.drupal.org/files/issues/username_enumeration_prevention-check_phase_runtime-2871931-5.patch

projects[password_policy][type] = module
projects[password_policy][version] = 3.0-alpha4

projects[seckit][type] = module
projects[seckit][version] = 1.0-alpha2

projects[security_review][type] = module
projects[security_review][download][url] = https://git.drupal.org/project/security_review.git
projects[security_review][download][revision] = 35ebae445bb260e961e47c4c58efe7c50c228999
projects[security_review][download][branch] = 8.x-1.x

projects[honeypot][type] = module
projects[honeypot][version] = 1.27

projects[shield][type] = module
projects[shield][version] = 1.1

projects[captcha][type] = module
projects[captcha][version] = 1.0-beta1

projects[recaptcha][type] = module
projects[recaptcha][version] = 2.2

;;;;;;;;;;;;;;;;;;;;;
;; Contrib modules for Varbase Search
;;;;;;;;;;;;;;;;;;;;;

projects[search_api][type] = module
projects[search_api][version] = 1.6
;; Issue #2931562: Fixed the Notice: Undefined index: total When we enable the module in the installation step.
projects[search_api][patch][] = https://www.drupal.org/files/issues/2931562-11--undefined_total_in_task_manager_batch_finish.patch

;;;;;;;;;;;;;;;;;;;;;
;; Contrib modules for Varbase hero slider media
;;;;;;;;;;;;;;;;;;;;;

projects[blazy][type] = module
projects[blazy][version] = 1.0-rc2

projects[slick][type] = module
projects[slick][version] = 1.0

projects[slick_views][type] = module
projects[slick_views][version] = 1.0-rc2

;;;;;;;;;;;;;;;;;;;;;
;; Contrib modules for varbase carousels.
;;;;;;;;;;;;;;;;;;;;;

projects[slick_media][type] = module
projects[slick_media][version] = 1.0

;;;;;;;;;;;;;;;;;;;;;
;; Development contrib modules
;;;;;;;;;;;;;;;;;;;;;

projects[features][type] = module
projects[features][version] = 3.5

projects[coffee][type] = module
projects[coffee][version] = 1.0-beta2
;; Issue #2815381: Coffee breaks whole page when using right to left (rtl) languages in drupal 8
projects[coffee][patch][] = https://www.drupal.org/files/issues/coffee-coffee_breaks_page_with_rtl-2815381-6.patch
;; Issue #2872093: Coffee css fixes in RTL
projects[coffee][patch][] = https://www.drupal.org/files/issues/2872093-10.patch

projects[diff][type] = module
projects[diff][version] = 1.0-rc1

projects[masquerade][type] = module
projects[masquerade][version] = 2.0-beta1

projects[menu_admin_per_menu][type] = module
projects[menu_admin_per_menu][version] = 1.0

projects[drd_agent][type] = module
projects[drd_agent][version] = 3.6

projects[libraries_ui][type] = module
projects[libraries_ui][version] = 1.0

projects[devel][type] = module
projects[devel][version] = 1.2

;;;;;;;;;;;;;;;;;;;;;
;; Contrib themes
;;;;;;;;;;;;;;;;;;;;;

projects[bootstrap][type] = theme
projects[bootstrap][version] = 3.9

projects[adminimal_theme][type] = theme
projects[adminimal_theme][version] = 1.3
;; Issue #2696393: Checkboxes with .error class are not usable
projects[adminimal_theme][patch][] = https://www.drupal.org/files/issues/adminimal-checkboxes_with_error-2696393-3.patch

projects[material_admin][type] = theme
projects[material_admin][version] = 1.0-alpha4

;;;;;;;;;;;;;;;;;;;;;
;; Legacy Contrib modules.
;;  - Not used, but kept for projects which still using them
;;  - As a step to update or migrate and use new selected modules.
;;;;;;;;;;;;;;;;;;;;;

projects[libraries][type] = module
projects[libraries][version] = 3.0-alpha1

;; Layout plugin is in Drupal 8.3.x core under the name of [Layout Discovery]
projects[layout_plugin][type] = module
projects[layout_plugin][version] = 1.0-alpha23

;; Switched to use [simple sitemap] as the default for sitemap.
projects[xmlsitemap][type] = module
projects[xmlsitemap][version] = 1.0-alpha2

;;;;;;;;;;;;;;;;;;;;;
;; Varbase public contrib modules.
;;;;;;;;;;;;;;;;;;;;;

projects[anchor_link][type] = module
projects[anchor_link][version] = 1.x-dev

projects[entity_browser_enhanced][type] = module
projects[entity_browser_enhanced][version] = 1.x-dev

projects[vmi][type] = module
projects[vmi][version] = 1.x-dev

projects[total_control][type] = module
projects[total_control][version] = 2.0-alpha4
;; Issue #2935351: Fixed the issue when Enabled with multilingual of Translatable Markup for Invalid Argument Exception: $string (Array) must be a string.
projects[total_control][patch][] = https://www.drupal.org/files/issues/2935351-2.patch

;;;;;;;;;;;;;;;;;;;;;
;; Varbase public contrib features.
;;;;;;;;;;;;;;;;;;;;;

projects[varbase_editor][type] = module
projects[varbase_editor][version] = 4.x-dev

projects[varbase_heroslider_media][type] = module
projects[varbase_heroslider_media][version] = 4.x-dev

projects[varbase_carousels][type] = module
projects[varbase_carousels][version] = 4.x-dev

projects[varbase_bootstrap_paragraphs][type] = module
projects[varbase_bootstrap_paragraphs][version] = 4.x-dev

projects[varbase_total_control][type] = module
projects[varbase_total_control][version] = 1.x-dev

projects[varbase_auth][type] = module
projects[varbase_auth][version] = 4.x-dev

projects[varbase_blog][type] = module
projects[varbase_blog][version] = 4.x-dev

;;;;;;;;;;;;;;;;;;;;;
;; Varbase public contrib themes.
;;;;;;;;;;;;;;;;;;;;;

projects[vartheme_material][type] = module
projects[vartheme_material][version] = 4.x-dev

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
libraries[slick][download][url] = "https://github.com/kenwheeler/slick/archive/1.6.0.tar.gz"
libraries[slick][destination] = "libraries"

libraries[ace][directory_name] = "ace"
libraries[ace][download][type] = "get"
libraries[ace][download][url] = "http://github.com/ajaxorg/ace-builds/archive/v1.2.6.tar.gz"
libraries[ace][destination] = "libraries"
