api = 2
core = 8.x

; Defaults
defaults[projects][subdir] = "contrib"

;;;;;;;;;;;;;;;;;;;;;
;; Contrib modules
;;;;;;;;;;;;;;;;;;;;;

projects[config_update][type] = module
projects[config_update][version] = 1.7

projects[config_filter][type] = module
projects[config_filter][version] = 2.2

projects[config_ignore][type] = module
projects[config_ignore][version] = 2.2

projects[config_inspector][type] = module
projects[config_inspector][version] = 1.1

projects[ctools][type] = module
projects[ctools][version] = 3.4

projects[token][type] = module
projects[token][version] = 1.7

projects[token_filter][type] = module
projects[token_filter][version] = 1.2

projects[page_manager][type] = module
projects[page_manager][version] = 4.0-beta6
;; Issue #2665328: Variants take entity label not the variant title
projects[page_manager][patch][] = https://www.drupal.org/files/issues/2020-06-09/2665328-106.patch

projects[panels][type] = module
projects[panels][version] = 4.6

projects[bootstrap_layouts][type] = module
projects[bootstrap_layouts][version] = 5.2

projects[layout_builder_modal][type] = module
projects[layout_builder_modal][version] = 1.1

projects[layout_builder_restrictions][type] = module
projects[layout_builder_restrictions][version] = 2.7

projects[layout_library][type] = module
projects[layout_library][version] = 1.0-beta2

projects[layout_builder_block_sanitizer][type] = module
projects[layout_builder_block_sanitizer][version] = 1.0-alpha4

projects[media_library_theme_reset][type] = module
projects[media_library_theme_reset][version] = 1.0


core = ''

projects[layout_builder_component_attributes][type] = module
projects[layout_builder_component_attributes][download][type] = "git"
projects[layout_builder_component_attributes][download][branch] = 1.1.x

core = 8.x

projects[layout_builder_at][type] = module
projects[layout_builder_at][version] = 2.11

projects[media_library_edit][type] = module
projects[media_library_edit][version] = 1.0-alpha2 

projects[media_library_form_element][type] = module

projects[media_revisions_ui][type] = module

projects[lb_ux][type] = module
projects[lb_ux][version] = 1.0-beta2
;; Issue #3173730: Remove the change of default for auto-submit controller on the existing route to have a better behavior when adding a new section
projects[lb_ux][patch][] = https://www.drupal.org/files/issues/2020-09-29/3173730-2.patch
;; Issue #3143804: Add support for Layout Builder Component Attributes extension integration with Layout Builder UX
projects[lb_ux][patch][] = https://www.drupal.org/files/issues/2020-09-30/3143804-3.patch
;; Issue #3150012: Fix RuntimeException: Callable LayoutBuilderAccessCheck::access requires a value for the $section_storage argument
projects[lb_ux][patch][] = https://www.drupal.org/files/issues/2020-10-11/3150012-12_0.patch

projects[ds][type] = module
projects[ds][version] = 3.9

projects[views_bootstrap][type] = module
projects[views_bootstrap][version] = 4.3

projects[field_group][type] = module
projects[field_group][version] = 3.1

projects[smart_trim][type] = module
projects[smart_trim][version] = 1.3

projects[advanced_text_formatter][type] = module

projects[block_class][type] = module
projects[block_class][version] = 1.2

projects[menu_block][type] = module
projects[menu_block][version] = 1.6

projects[block_form_alter][type] = module
projects[block_form_alter][version] = 1.1

projects[entity_block][type] = module
projects[entity_block][version] = 1.0-beta3

projects[block_content_permissions][type] = module
projects[block_content_permissions][version] = 1.10

projects[extlink][type] = module
projects[extlink][version] = 1.5

projects[linkit][type] = module
projects[linkit][version] = 4.3

projects[image_resize_filter][type] = module
projects[image_resize_filter][version] = 1.1

projects[views_infinite_scroll][type] = module
projects[views_infinite_scroll][version] = 1.7

projects[embed][type] = module
projects[embed][version] = 1.4

projects[entity][type] = module
projects[entity][version] = 1.1

projects[entity_clone][type] = module
projects[entity_clone][version] = 1.0-beta4

projects[entity_browser][type] = module
projects[entity_browser][version] = 2.5

projects[dropzonejs][type] = module
projects[dropzonejs][version] = 2.3

projects[entity_embed][type] = module
projects[entity_embed][version] = 1.1
;; Issue #3070343: Allow to add a Drupal core link with Link Widget for Image entities using Entity Embed Dialog in CKEditor
projects[entity_embed][patch][] = https://www.drupal.org/files/issues/2019-07-25/3070343-8.patch
;; Issue #2679875: Inline Entity Form integration
projects[entity_embed][patch][] = https://www.drupal.org/files/issues/2019-08-18/2679875-10.patch

projects[inline_entity_form][type] = module
projects[inline_entity_form][version] = 1.0-rc8
;; Issue #3143422: Allow to hide the Edit button in Complex widget
projects[inline_entity_form][patch][] = https://www.drupal.org/files/issues/2020-05-28/optional_edit-3143422-2.patch

projects[media_entity_instagram][type] = module
projects[media_entity_instagram][version] = 2.1

projects[media_entity_twitter][type] = module
projects[media_entity_twitter][version] = 2.4

projects[crop][type] = module
projects[crop][version] = 2.1

projects[focal_point][type] = module
projects[focal_point][version] = 1.5

projects[pathologic][type] = module
projects[pathologic][version] = 1.0-alpha2

projects[ckeditor_bidi][type] = module

projects[ace_editor][type] = module
projects[ace_editor][version] = 1.2

projects[entityqueue][type] = module
projects[entityqueue][version] = 1.1

projects[entityqueue_form_widget][type] = module

projects[imagemagick][type] = module
projects[imagemagick][version] = 3.1

projects[file_mdm][type] = module
projects[file_mdm][version] = 2.1

projects[sophron][type] = module
projects[sophron][version] = 1.0

projects[imageapi_optimize][type] = module
projects[imageapi_optimize][version] = 2.0-beta1

projects[ultimate_cron][type] = module
projects[ultimate_cron][version] = 2.0-alpha5

projects[persistent_login][type] = module
projects[persistent_login][version] = 1.3
;; Issue #2899530: Hide user^s local task
projects[persistent_login][patch][] = https://www.drupal.org/files/issues/persistent_login-user_task_permission-2899530-6.patch

projects[userprotect][type] = module
projects[userprotect][version] = 1.1

core = ''

projects[admin_audit_trail][type] = module
projects[admin_audit_trail][download][type] = "git"
projects[admin_audit_trail][download][branch] = 1.0.x

core = 8.x

projects[events_log_track][type] = module
projects[events_log_track][version] = 1.1
;; Issue #2934036: Events Log Track breaks Entity Browser
projects[events_log_track][patch][] =https://www.drupal.org/files/issues/2018-04-19/2934036-check_empty_submit-5.patch
;; Issue #2930817: Entities with title longer than 50 characters
projects[events_log_track][patch][] =https://www.drupal.org/files/issues/increase-character-length-2930817-2.patch
;; Issue #2974170: Event logs for change in workflows
projects[events_log_track][patch][] =https://www.drupal.org/files/issues/2018-06-26/events_log_track-add-workflows-2974170-7.patch
;; Issue #2959769: Add handlers for file and media entities
projects[events_log_track][patch][] =https://www.drupal.org/files/issues/2018-06-26/events-log-track_add-file-media-2959769-9.patch
;; Issue #3027463: Skip password logging during failed authentication attempt
projects[events_log_track][patch][] =https://www.drupal.org/files/issues/2019-01-22/event-log-track-auth-3027463-2.patch
;; Issue #3060838: Fix fatal error when we request password with non-existing users/emails  on the Events Log Track User Authentication
projects[events_log_track][patch][] =https://www.drupal.org/files/issues/2019-06-11/3060838-4.patch

projects[config_perms][type] = module
projects[config_perms][version] = 2.0

projects[roleassign][type] = module
projects[roleassign][version] = 1.0-beta1

projects[prevent_homepage_deletion][type] = module
projects[prevent_homepage_deletion][version] = 1.3

projects[admin_toolbar][type] = module
projects[admin_toolbar][version] = 2.4

projects[adminimal_admin_toolbar][type] = module
projects[adminimal_admin_toolbar][version] = 1.11

projects[tour_ui][type] = module
projects[tour_ui][version] = 1.0-beta2

projects[tour_builder][type] = module
projects[tour_builder][version] = 1.0-alpha1

projects[responsive_preview][type] = module
projects[responsive_preview][version] = 1.0

projects[views_bulk_operations][type] = module
projects[views_bulk_operations][version] = 3.9

projects[views_bulk_edit][type] = module
projects[views_bulk_edit][version] = 2.4

projects[revision_log_default][type] = module
projects[revision_log_default][version] = 1.2

projects[webform][type] = module

projects[webform_analysis][type] = module
projects[webform_analysis][version] = 1.0-beta7

projects[webform_views][type] = module
projects[webform_views][version] = 5.0-alpha8

projects[default_content][type] = module
projects[default_content][download][type] = "git"
projects[default_content][download][branch] = 2.0.x
;; Issue #3160146: Add Layout Builder Normalizer and Denormalize
projects[default_content][patch][] = https://www.drupal.org/files/issues/2020-07-22/3160146-22.patch

projects[better_normalizers][type] = module
projects[better_normalizers][version] = 1.0-beta4

projects[content_lock][type] = module
projects[content_lock][version] = 2.1

projects[node_edit_protection][type] = module
projects[node_edit_protection][version] = 1.0

projects[rabbit_hole][type] = module
projects[rabbit_hole][version] = 1.0-beta7

projects[fast_404][type] = module
projects[fast_404][version] = 2.0-alpha5

projects[mailsystem][type] = module
projects[mailsystem][version] = 4.3

projects[swiftmailer][type] = module
projects[swiftmailer][version] = 2.0-beta1

projects[smtp][type] = module
projects[smtp][version] = 1.0

projects[length_indicator][type] = module
projects[length_indicator][version] = 1.1

projects[maxlength][type] = module
projects[maxlength][version] = 1.0-rc1

projects[menu_position][type] = module
projects[menu_position][version] = 1.0-beta1

projects[mail_edit][type] = module
projects[mail_edit][version] = 1.x-dev

projects[taxonomy_access_fix][type] = module
projects[taxonomy_access_fix][version] = 2.8

projects[taxonomy_menu][type] = module
projects[taxonomy_menu][version] = 3.4
;; Issue #2939143: Fixed Undefined method TaxonomyMenu::generateTaxonomyLinks()
projects[taxonomy_menu][patch][] = https://www.drupal.org/files/issues/2018-12-23/2939143-10.patch

projects[better_exposed_filters][type] = module
projects[better_exposed_filters][version] = 5.0-beta1

projects[autocomplete_deluxe][type] = module

projects[link_attributes][type] = module
projects[link_attributes][version] = 1.11

projects[paragraphs][type] = module
projects[paragraphs][version] = 1.12
;; Issue #2924774: Let Editors add/delete/clone paragraphs When [Editing a translation]
projects[paragraphs][patch][] = https://www.drupal.org/files/issues/2018-06-03/2924774-29.patch
;; Issue #3138609: Fixe Field group support broken
projects[paragraphs][patch][] = https://www.drupal.org/files/issues/2020-05-25/3138609-9.patch

projects[paragraphs_previewer][type] = module
projects[paragraphs_previewer][version] = 1.5
;; Issue #2904917: Make paragraph previewer work with new UI/UX improvement patch
projects[paragraphs_previewer][patch][] = https://www.drupal.org/files/issues/2019-02-20/2904917-8.patch

projects[paragraphs_features][type] = module
projects[paragraphs_features][version] = 1.11

projects[paragraphs_asymmetric_translation_widgets][type] = module
projects[paragraphs_asymmetric_translation_widgets][version] = 1.0-beta4

projects[paragraphs_edit][type] = module
projects[paragraphs_edit][version] = 2.0-alpha8

projects[entity_usage][type] = module
projects[entity_usage][version] = 2.0-beta3

projects[color_field][type] = module
projects[color_field][version] = 2.4

projects[entity_reference_revisions][type] = module
projects[entity_reference_revisions][version] = 1.8

projects[viewsreference][type] = module
projects[viewsreference][version] = 2.0-beta2

projects[libraries][type] = module
projects[libraries][version] = 3.0-alpha1

projects[masonry][type] = module
projects[masonry][version] = 1.2

projects[charts][type] = module
projects[charts][version] = 3.2

projects[google_analytics_reports][type] = module
projects[google_analytics_reports][version] = 3.0-rc3

projects[login_destination][type] = module
projects[login_destination][version] = 2.0-alpha3

projects[betterlogin][type] = module
projects[betterlogin][version] = 1.5

projects[social_api][type] = module
projects[social_api][version] = 2.0-rc3

projects[social_auth][type] = module
projects[social_auth][version] = 2.0-rc2

projects[social_auth_google][type] = module
projects[social_auth_google][version] = 2.1

projects[social_auth_facebook][type] = module
projects[social_auth_facebook][version] = 2.0

projects[social_auth_twitter][type] = module
projects[social_auth_twitter][version] = 2.0-alpha3

projects[social_auth_linkedin][type] = module
projects[social_auth_linkedin][version] = 2.0-beta3

projects[ckeditor_media_embed][type] = module
projects[ckeditor_media_embed][version] = 1.9
;; Issue #2900313: Add ability to embed tweets and other rich content in WYSIWYG
projects[ckeditor_media_embed][patch][] = https://www.drupal.org/files/issues/embed_rich_content_in_WYSIWYG-2900313-2.patch

projects[styleguide][type] = module
projects[styleguide][version] = 1.0-alpha3

projects[pathauto][type] = module
projects[pathauto][version] = 1.8

projects[redirect][type] = module
projects[redirect][version] = 1.6

projects[metatag][type] = module
projects[metatag][version] = 1.14

projects[schema_metatag][type] = module
projects[schema_metatag][version] = 2.1

projects[simple_sitemap][type] = module
projects[simple_sitemap][version] = 3.7

projects[google_analytics][type] = module
projects[google_analytics][version] = 3.1

projects[google_tag][type] = module
projects[google_tag][version] = 1.4

projects[yoast_seo][type] = module
projects[yoast_seo][version] = 1.6

projects[l10n_client][type] = module
projects[l10n_client][version] = 1.x-dev

projects[username_enumeration_prevention][type] = module
projects[username_enumeration_prevention][version] = 1.1

projects[password_policy][type] = module
projects[password_policy][version] = 3.0-beta1

projects[genpass][type] = module
projects[genpass][version] = 1.0

projects[seckit][type] = module

projects[security_review][type] = module
projects[security_review][version] = 1.0-alpha2

projects[honeypot][type] = module

projects[shield][type] = module
projects[shield][version] = 1.4

projects[flood_unblock][type] = module

projects[captcha][type] = module
projects[captcha][version] = 1.1

projects[recaptcha][type] = module
projects[recaptcha][version] = 3.0

projects[search_api][type] = module
projects[search_api][version] = 1.17

projects[blazy][type] = module
projects[blazy][version] = 2.1

projects[slick][type] = module
projects[slick][version] = 2.2

projects[slick_views][type] = module
projects[slick_views][version] = 2.3

projects[consumers][type] = module
projects[consumers][version] = 1.11

projects[openapi][type] = module
projects[openapi][version] = 2.0-rc3

projects[openapi_jsonapi][type] = module
projects[openapi_jsonapi][version] = 2.0-rc2

projects[openapi_rest][type] = module
projects[openapi_rest][version] = 2.0-rc2

projects[schemata][type] = module
projects[schemata][version] = 1.0-beta2

projects[openapi_ui][type] = module
projects[openapi_ui][version] = 1.0-rc3

projects[openapi_ui_redoc][type] = module
projects[openapi_ui_redoc][version] = 1.0-rc3

projects[openapi_ui_swagger][type] = module
projects[openapi_ui_swagger][version] = 1.0-rc4

projects[simple_oauth][type] = module
projects[simple_oauth][version] = 4.5

projects[restui][type] = module
projects[restui][version] = 1.18

projects[jsonapi_extras][type] = module
projects[jsonapi_extras][version] = 3.16

projects[moderation_sidebar][type] = module
projects[moderation_sidebar][version] = 1.4
;; Issue #3157219: Fix RTL Moderation Sidebar style
projects[moderation_sidebar][patch][] = https://www.drupal.org/files/issues/2020-07-06/3157219-3.patch

projects[content_planner][type] = module
projects[content_planner][version] = 1.0-beta12
;; Issue #3010615 Kanban Published to Draft workflow Issue
projects[content_planner][patch][] = https://www.drupal.org/files/issues/2020-05-06/kanban-published-to-draft-workflow-issue-3010615-16.patch

projects[scheduler][type] = module
projects[scheduler][version] = 1.3

projects[content_moderation_notifications][type] = module
projects[content_moderation_notifications][version] = 3.2

projects[scheduler_content_moderation_integration][type] = module
projects[scheduler_content_moderation_integration][version] = 1.3

projects[jquery_ui][type] = module
projects[jquery_ui_datepicker][type] = module
projects[jquery_ui_draggable][type] = module
projects[jquery_ui_droppable][type] = module
projects[jquery_ui_slider][type] = module

core = ''

projects[jquery_ui_touch_punch][type] = module
projects[jquery_ui_touch_punch][download][type] = "git"
projects[jquery_ui_touch_punch][download][branch] = 1.0.x

core = 8.x

;;;;;;;;;;;;;;;;;;;;;
;; Development contrib modules
;;;;;;;;;;;;;;;;;;;;;

projects[features][type] = module
projects[features][version] = 3.11

projects[coffee][type] = module
projects[coffee][version] = 1.0
;; Issue #3128583: Fix Could not load data for internal links
projects[coffee][patch][] = https://www.drupal.org/files/issues/2020-06-21/3128583-16.patch

projects[diff][type] = module
projects[diff][version] = 1.0

projects[masquerade][type] = module
projects[masquerade][version] = 2.0-beta4

projects[menu_admin_per_menu][type] = module
projects[menu_admin_per_menu][version] = 1.3

projects[drd_agent][type] = module
projects[drd_agent][version] = 3.13

projects[libraries_ui][type] = module
projects[libraries_ui][version] = 1.0

projects[devel][type] = module

projects[stage_file_proxy][type] = module

projects[update_helper][type] = module
projects[update_helper][download][type] = "git"
projects[update_helper][download][branch] = 2.x
;; Issue #3024165: [PATCH] Enhancements, Better messages for the unable to apply updates, drush command and removed the Mark all updates as successful on install
projects[update_helper][patch][] = https://www.drupal.org/files/issues/2020-08-16/3024165-40.patch

projects[checklistapi][type] = module
projects[checklistapi][version] = 1.11

projects[script_manager][type] = module
projects[script_manager][version] = 1.2

projects[allowed_formats][type] = module
projects[allowed_formats][version] = 1.3

;;;;;;;;;;;;;;;;;;;;;
;; Contrib themes
;;;;;;;;;;;;;;;;;;;;;

projects[bootstrap][type] = theme
projects[bootstrap][version] = 3.23

projects[bootstrap_barrio][type] = theme
projects[bootstrap_barrio][version] = 4.32

projects[adminimal_theme][type] = theme
projects[adminimal_theme][version] = 1.6

;;;;;;;;;;;;;;;;;;;;;
;; General Public contributed modules.
;;;;;;;;;;;;;;;;;;;;;

projects[anchor_link][type] = module
projects[anchor_link][version] = 1.7

projects[entity_browser_enhanced][type] = module
projects[entity_browser_enhanced][version] = 1.0

projects[vmi][type] = module
projects[vmi][version] = 2.7

projects[total_control][type] = module
projects[total_control][version] = 2.0

;;;;;;;;;;;;;;;;;;;;;
;; Varbase public contributed modules.
;;;;;;;;;;;;;;;;;;;;;

projects[varbase_core][type] = module
projects[varbase_core][version] = 8.x-dev

projects[varbase_api][type] = module
projects[varbase_api][version] = 7.x-dev

projects[varbase_media][type] = module
projects[varbase_media][version] = 7.x-dev

projects[varbase_bootstrap_paragraphs][type] = module
projects[varbase_bootstrap_paragraphs][version] = 7.x-dev

projects[varbase_editor][type] = module
projects[varbase_editor][version] = 7.x-dev

projects[varbase_landing][type] = module
projects[varbase_landing][version] = 7.x-dev

projects[varbase_layout_builder][type] = module
projects[varbase_layout_builder][version] = 1.x-dev

projects[varbase_heroslider_media][type] = module
projects[varbase_heroslider_media][version] = 7.x-dev

projects[varbase_carousels][type] = module
projects[varbase_carousels][version] = 7.x-dev

projects[varbase_blog][type] = module
projects[varbase_blog][version] = 8.x-dev

projects[varbase_search][type] = module
projects[varbase_search][version] = 6.x-dev

projects[varbase_seo][type] = module
projects[varbase_seo][version] = 6.x-dev

projects[varbase_total_control][type] = module
projects[varbase_total_control][version] = 6.x-dev

projects[varbase_auth][type] = module
projects[varbase_auth][version] = 6.x-dev

projects[varbase_styleguide][type] = module
projects[varbase_styleguide][version] = 6.x-dev

projects[varbase_email][type] = module
projects[varbase_email][version] = 6.x-dev

projects[varbase_workflow][type] = module

;;;;;;;;;;;;;;;;;;;;;
;; Varbase public contributed themes.
;;;;;;;;;;;;;;;;;;;;;

projects[vartheme][type] = theme
projects[vartheme][version] = 6.x-dev

projects[vartheme_bs4][type] = theme
projects[vartheme_bs4][version] = 6.x-dev

projects[vartheme_admin][type] = theme
projects[vartheme_admin][version] = 6.x-dev

projects[vartheme_claro][type] = theme

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
