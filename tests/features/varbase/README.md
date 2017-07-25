# Varbase Gherkin features

A list of features, and scenarios to have a full test over Varbase 8.x-4.x

If you want to run all Gherkin Features over a new Varbase site.
You will need to create the list of Testing users, Arabic
languages to the site.

## You can run the following command:
```
  $ bin/behat features/varbase/ --format pretty --out std  --format html  --out reports/report-$( date '+%Y-%m-%d_%H-%M-%S' )
```

After that you can see the report in the ../behat/reports folder.

If you want to run the test in steps, if you are not interested in the
initialization and cleaning up after the test.

```
  $ bin/behat features/varbase/step1-init-tests
  $ bin/behat features/varbase/step2-apply-tests
  $ bin/behat features/varbase/step3-cleanup-tests
```
For more custom commands: [Varbase Automated Functional Testing](https://github.com/Vardot/varbase/blob/8.x-4.x/tests/README.md)


## List of features in the step 1 init tests:
--------------------------------------------------------------------------------
* [Feature: Create default testing users.](https://github.com/Vardot/varbase/blob/8.x-4.x/tests/features/varbase/step1-init-tests/1-create-default-testing-users.feature)
```
test_authenticated: { email: 'authenticated.test@vardot.com', password: 'dD.123123ddd' }
test_editor: { email: 'editor.test@vardot.com', password: 'dD.123123ddd' }
test_content_admin: { email: 'content.admin.test@vardot.com', password: 'dD.123123ddd' }
test_site_admin: { email: 'site.admin.test@vardot.com', password: 'dD.123123ddd' }
test_super_admin: { email: 'super.admin.test@vardot.com', password: 'dD.123123ddd' }
```

* [Feature: Add Arabic language if we do not have it to languages in the system.](https://github.com/Vardot/varbase/blob/8.x-4.x/tests/features/varbase/step1-init-tests/2-add-arabic.feature)



## List of Features in the step 2 apply tests:
--------------------------------------------------------------------------------
* [01 - Feature: Website Base Requirements - User Registration - Only admins login](https://github.com/Vardot/varbase/blob/8.x-4.x/tests/features/varbase/step2-apply-tests/01-website-base-requirements_user-registration_only-admins-login_v4-0.feature)
* [02 - Feature: Website Base Requirements - User Roles - Simple Roles](https://github.com/Vardot/varbase/blob/8.x-4.x/tests/features/varbase/step2-apply-tests/02-website-base-requirements_user-roles_simple-roles_v4-0.feature)
* [03 - Feature: User Management - Standard User Management - Request new password](https://github.com/Vardot/varbase/blob/8.x-4.x/tests/features/varbase/step2-apply-tests/03-user-management_standard-user-managment_request-new-password_v4-0.feature)
* [04 - Feature: Website Base Requirements - Website Languages - All content translatable to all languages](https://github.com/Vardot/varbase/blob/8.x-4.x/tests/features/varbase/step2-apply-tests/04-website-base-requirements_website-languages_all-content-translatable-to-all-languages_v4-0.feature)
* [05 - Feature: User Management - Standard User Management - Admins can create users and assign a role to them](https://github.com/Vardot/varbase/blob/8.x-4.x/tests/features/varbase/step2-apply-tests/05-user-management_standard-user-management_admins-can-create-users-and-assign-role-them_v4-0.feature)
* [06 - Feature: Website Base Requirements - Website Languages - English](https://github.com/Vardot/varbase/blob/8.x-4.x/tests/features/varbase/step2-apply-tests/06-website-base-requirements_website-languages_english_v4-0.feature)
* [07 - Feature: User Management - Standard User Management - Login](https://github.com/Vardot/varbase/blob/8.x-4.x/tests/features/varbase/step2-apply-tests/07-user-management_standard-user-managment_login_v4-0.feature)
* [08 - Feature: Content Editing - Rich Text Editor - Convert URLs into links](https://github.com/Vardot/varbase/blob/8.x-4.x/tests/features/varbase/step2-apply-tests/08-content-editing_rich-text-editor_convert-urls-links_v4-0.feature)
* [09 - Feature: Content Editing - Rich Text Editor - Easy linking to internal content by searching for content by its titles](https://github.com/Vardot/varbase/blob/8.x-4.x/tests/features/varbase/step2-apply-tests/09-content-editing_rich-text-editor_easy-linking-internal-content-searching-content-by-its-titles-v4-0.feature)
* [10 - Feature: Content Editing - Rich Text Editor - Input formats](https://github.com/Vardot/varbase/blob/8.x-4.x/tests/features/varbase/step2-apply-tests/10-content-editing_rich-text-editor_input-formats-v4-0.feature)
* [11 - Feature: Content Structure Features - Basic Pages - Basic page](https://github.com/Vardot/varbase/blob/8.x-4.x/tests/features/varbase/step2-apply-tests/11-content-structure-features_basic-pages_basic-page_v4-0.feature)
* [12 - Feature: Content Structure Features - Basic Pages - Pages with pre-defined layouts](https://github.com/Vardot/varbase/blob/8.x-4.x/tests/features/varbase/step2-apply-tests/12-content-structure-features_basic-pages_pages-with-pre-defined-layouts_v4-0.feature)
* [13 - Feature: File & Media Management - Assets Management - Ability to embed existing media image library in the rich text editor](https://github.com/Vardot/varbase/blob/8.x-4.x/tests/features/varbase/step2-apply-tests/13-file-and-media-management_assets-management_ability-to-embed-existing-media-image-library-in-the-rich-text-editor_v4-0.feature)
* [14 - Feature: File & Media Management - Assets Management - Image media and their usage list page for site admins](https://github.com/Vardot/varbase/blob/8.x-4.x/tests/features/varbase/step2-apply-tests/14-file-and-media-management_assets-management_image-media-and-their-usage-list-page-for-admins_v4-0.feature)
* [15 - Feature: Support Requirements - Standard Support Navigation - Allow site super administrators to switch users and surf the site as that user.](https://github.com/Vardot/varbase/blob/8.x-4.x/tests/features/varbase/step2-apply-tests/15-masquerade-allows-site-administrators-to-switch-users-and-surf-the-site-as-that-user.feature)
* [16 - Feature: Navigational Features - Breadcrumbs - Standard breadcrumbs](https://github.com/Vardot/varbase/blob/8.x-4.x/tests/features/varbase/step2-apply-tests/16-navigational-features_breadcrumbs_standard-breadcrumbs_v4-0.feature)
* [17 - Feature: Add default entityqueue module testing content and configuration.](https://github.com/Vardot/varbase/blob/8.x-4.x/tests/features/varbase/step2-apply-tests/17-add-default-entityqueue-testing-content-and-config.feature)
* [18 - Feature: Module Requirements - Standard Entity Queue Management - Have the option to Reverse order in admin view.](https://github.com/Vardot/varbase/blob/8.x-4.x/tests/features/varbase/step2-apply-tests/18-entityqueue-reverse-order-in-admin-view.feature)
* [19 - Feature: Module Requirements - Standard Entity Queue Management - Have Entityqueue tab inside the full content page and be able to Add to a queue or Remove from a queue](https://github.com/Vardot/varbase/blob/8.x-4.x/tests/features/varbase/step2-apply-tests/19-entityqueue-tab-for-content-types.feature)
* [20 - Feature: Module Requirements - Standard Back-End Navigation - Navigate through the Drupal admin with the keyboard for faster access](https://github.com/Vardot/varbase/blob/8.x-4.x/tests/features/varbase/step2-apply-tests/20-coffee-standard-back-end-navigation-navigate-through-drupal-admin-keyboard.feature)
* [21 - Feature: user requirements - Have persistent login options and configurations.](https://github.com/Vardot/varbase/blob/8.x-4.x/tests/features/varbase/step2-apply-tests/21-persistent-login-testing.feature)
* [22 - Feature: User Management - Standard User Management - Admins can disable users](https://github.com/Vardot/varbase/blob/8.x-4.x/tests/features/varbase/step2-apply-tests/22-user-management_standard-user-managment_admins-can-disable-users_v4-0.feature)
* [23 - Feature: User Management - Standard User Management - Users with permission to assign roles may select which roles are available for assignment.](https://github.com/Vardot/varbase/blob/8.x-4.x/tests/features/varbase/step2-apply-tests/23-roleassign-testing.feature)
* [24 - Feature: User Management - Standard User Management - Have fine-grained access control of user administrators protections with specific user, or all users in a role.](https://github.com/Vardot/varbase/blob/8.x-4.x/tests/features/varbase/step2-apply-tests/24-userprotect-testing.feature)
* [25 - Feature: Landing Pages - Add any paragraph types to the page.](https://github.com/Vardot/varbase/blob/8.x-4.x/tests/features/varbase/step2-apply-tests/25-landing-page_add-any-paragraph-type-to-the-page.feature)
* [26 - Feature: Content Structure Features - Landing Pages - Varbase text and image paragraphs.](https://github.com/Vardot/varbase/blob/8.x-4.x/tests/features/varbase/step2-apply-tests/26-content-structure-features_anding-pages-varbase-text-and-image-paragraphs.feature)


## List of features in the step 2 cleanup tests:
--------------------------------------------------------------------------------
* [Feature: Delete default testing users.](https://github.com/Vardot/varbase/blob/8.x-4.x/tests/features/varbase/step3-cleanup-tests/1-delete-default-testing-users.feature)
```
test_authenticated
test_editor
test_content_admin
test_site_admin
test_super_admin
```

* [Feature: Delete Arabic language from the system.](https://github.com/Vardot/varbase/blob/8.x-4.x/tests/features/varbase/step3-cleanup-tests/2-delete-arabic.feature)
* [Feature: Cleanup after entityqueue module tests.](https://github.com/Vardot/varbase/blob/8.x-4.x/tests/features/varbase/step3-cleanup-tests/3-cleanup-after-entityqueue-tests.feature)
