# Varbase Gherkin features

A list of features, and scenarios to have a full test over Varbase 8.x-6.x

If you want to run all Gherkin Features over a new Varbase site.
You will need to create the list of Testing users, Arabic
languages to the site.

## You can run the following command:
```
  $ ../../../bin/behat tests/features/varbase/ --format pretty --out std  --format html  --out reports/report-$( date '+%Y-%m-%d_%H-%M-%S' )
```

After that you can see the report in the ../behat/reports folder.

If you want to run the test in steps, if you are not interested in the
initialization and cleaning up after the test.

```
  $ ../../../bin/behat tests/features/varbase/step1-init-tests
  $ ../../../bin/behat tests/features/varbase/step2-apply-tests
  $ ../../../bin/behat tests/features/varbase/step3-cleanup-tests
```


## [List of features in the step 1 init tests:](/tests/features/varbase/step1-init-tests/) 
--------------------------------------------------------------------------------

* [Feature: Create default testing users.](/tests/features/varbase/step1-init-tests/01-create-default-testing-users.feature)  
```
test_authenticated: { email: 'authenticated.test@vardot.com', password: 'dD.123123ddd' }
test_editor: { email: 'editor.test@vardot.com', password: 'dD.123123ddd' }
test_content_admin: { email: 'content.admin.test@vardot.com', password: 'dD.123123ddd' }
test_seo_admin: { email: 'seo.admin.test@vardot.com', password: 'dD.123123ddd' }
test_site_admin: { email: 'site.admin.test@vardot.com', password: 'dD.123123ddd' }
test_super_admin: { email: 'super.admin.test@vardot.com', password: 'dD.123123ddd' }
```

* [Feature: Add Arabic language if we do not have it to languages in the system.](/tests/features/varbase/step1-init-tests/02-add-arabic.feature)

## [List of Features in the step 2 apply tests:](/tests/features/varbase/step2-apply-tests/)
--------------------------------------------------------------------------------


### [Website Base Requirements](/tests/features/varbase/step2-apply-tests/01-website-base-requirements/)
* [Feature: Website Base Requirements - User Registration - Only admins login](/tests/features/varbase/step2-apply-tests/01-website-base-requirements/01-01-user-registration_only-admins-login.feature)
* [Feature: Website Base Requirements - User Roles - Simple Roles](/tests/features/varbase/step2-apply-tests/01-website-base-requirements/01-02-user-roles.feature)
* [Feature: Website Base Requirements - Content Editing - Rich Text Editor - Input formats](/tests/features/varbase/step2-apply-tests/01-website-base-requirements/01-03-input-formats.feature)
* [Feature: Website Base Requirements - Website Languages - English](/tests/features/varbase/step2-apply-tests/01-website-base-requirements/01-04-website-languages_english.feature)
* [Feature: Website Base Requirements - Website Languages - All content translatable to all languages](/tests/features/varbase/step2-apply-tests/01-website-base-requirements/01-05-translatable-content-types-to-all-languages.feature)
* [Feature: Website Base Requirements - Content Editing - Rich Text Editor - Convert URLs into links](/tests/features/varbase/step2-apply-tests/01-website-base-requirements/01-06-convert-urls-links.feature)

### [User Management](/tests/features/varbase/step2-apply-tests/02-user-management/)
* [Feature: User Management - Standard User Management - Request new password](/tests/features/varbase/step2-apply-tests/02-user-management/02-01-request-new-password.feature)
* [Feature: User Management - Standard User Management - Admins can create users and assign a role to them](/tests/features/varbase/step2-apply-tests/02-user-management/02-02-admins-can-create-users-and-assign-role-them.feature)
* [Feature: User Management - Standard User Management - Login](/tests/features/varbase/step2-apply-tests/02-user-management/02-03-user-login.feature)
* [Feature: User Management - Have persistent login options and configurations.](/tests/features/varbase/step2-apply-tests/02-user-management/02-04-persistent-login.feature)
* [Feature: User Management - Standard User Management - Have fine-grained access control of user administrators protections with specific user, or all users in a role.](/tests/features/varbase/step2-apply-tests/02-user-management/02-05-user-protect.feature)
* [Feature: User Management - Standard User Management - Users with permission to assign roles may select which roles are available for assignment.](/tests/features/varbase/step2-apply-tests/02-user-management/02-06-role-assign.feature)

### [Admin Management](/tests/features/varbase/step2-apply-tests/03-admin-management/)
* [Feature: Admin management - Support Requirements - Standard Support Navigation - Allow site super administrators to switch users and surf the site as that user.](/tests/features/varbase/step2-apply-tests/03-admin-management/03-01-allows-site-administrators-to-masquerade-by-switching-users.feature)
* [Feature: Admin management - Standard Back-End Navigation - Navigate through the Drupal admin with the keyboard for faster access](/tests/features/varbase/step2-apply-tests/03-admin-management/03-02-navigate-through-drupal-admin-keyboard.feature)
* [Feature: Admin management - Standard User Management - Admins can disable users](/tests/features/varbase/step2-apply-tests/03-admin-management/03-03-admins-can-disable-users.feature)
* [Feature: Admin management - Assets Management - Image media and their usage list page for site admins](/tests/features/varbase/step2-apply-tests/03-admin-management/03-04-image-media-and-their-usage-list-page-for-admins.feature)

### [Content Structure](/tests/features/varbase/step2-apply-tests/04-content-structure/)
* [Feature: Content Structure - Basic Page.](/tests/features/varbase/step2-apply-tests/04-content-structure/04-01-basic-page-permissions.feature)
* [Feature: Content Structure - Landing Pages](/tests/features/varbase/step2-apply-tests/04-content-structure/04-02-landing-page-permissions.feature)
* [Feature: Content Structure - Landing Pages - Add any paragraph types to the page.](/tests/features/varbase/step2-apply-tests/04-content-structure/04-03-landing-page_add-any-paragraph-type-to-the-page.feature)
* [Feature: Content Structure - Content Structure - Landing Pages - Varbase text and image paragraphs.](/tests/features/varbase/step2-apply-tests/04-content-structure/04-04-landing-page_text-and-image-paragraphs.feature)
* [Feature: Content Structure - Navigational Features - Breadcrumbs - Standard breadcrumbs](/tests/features/varbase/step2-apply-tests/04-content-structure/04-05-standard-bredcrumbs.feature)

### [Content Management](/tests/features/varbase/step2-apply-tests/05-content-management/)
* [Feature: Content Management - Add default [entityqueue] module testing content and configuration.](/tests/features/varbase/step2-apply-tests/04-content-structure/05-00-add-default-entityqueue-testing-content-and-config.feature)
* [Feature: Content Management - Standard Entity Queue Management - Have the option to Reverse order in admin view.](/tests/features/varbase/step2-apply-tests/04-content-structure/05-01-entityqueue-reverse-order-in-admin-view.feature)
* [Feature: Content Management - Standard Entity Queue Management - Have Entityqueue tab inside the full content page and be able to Add to a queue or Remove from a queue](/tests/features/varbase/step2-apply-tests/04-content-structure/05-02-entityqueue-tab-for-content-types.feature)
* [Feature: Content Management - Add hero slider to entityqueue using entityqueue form widget.](/tests/features/varbase/step2-apply-tests/04-content-structure/05-03-add-hero-slider-to-entityqueue-using-entityqueue-form-widget.feature)
* [Feature: Content Management - Cloning content and entities.](/tests/features/varbase/step2-apply-tests/04-content-structure/05-04-cloning-content-and-entities.feature)
* [Feature: Content Management - Assets Management - Ability to embed existing media image library in the rich text editor](/tests/features/varbase/step2-apply-tests/04-content-structure/05-05-embed-existing-media-image-library.feature)
* [Feature: Content Management - Content Editing - Rich Text Editor - Easy linking to internal content by searching for content by its titles](/tests/features/varbase/step2-apply-tests/04-content-structure/05-06-easy-linking-internal-content-searching-content-by-its-titles.feature)


## [List of features in the step 3 cleanup tests:](/tests/features/varbase/step3-cleanup-tests/)
--------------------------------------------------------------------------------

* [Feature: Delete default testing users.](/tests/features/varbase/step3-cleanup-tests/01-delete-default-testing-users.feature)
```
test_authenticated
test_editor
test_content_admin
test_seo_admin
test_site_admin
test_super_admin
```

* [Feature: Delete Arabic language from the system.](/tests/features/varbase/step3-cleanup-tests/02-delete-arabic.feature)
* [Feature: Cleanup after [entityqueue] module tests.](/tests/features/varbase/step3-cleanup-tests/03-cleanup-after-entityqueue-tests.feature)