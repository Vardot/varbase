# Varbase Gherkin features

A list of features, and scenarios to have a full test over Varbase 8.x-8.x

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


## List of features in the step 1 init tests:
--------------------------------------------------------------------------------

* Feature: Create default testing users
```
test_authenticated: { email: 'authenticated.test@vardot.com', password: 'dD.123123ddd' }
test_editor: { email: 'editor.test@vardot.com', password: 'dD.123123ddd' }
test_content_admin: { email: 'content.admin.test@vardot.com', password: 'dD.123123ddd' }
test_seo_admin: { email: 'seo.admin.test@vardot.com', password: 'dD.123123ddd' }
test_site_admin: { email: 'site.admin.test@vardot.com', password: 'dD.123123ddd' }
test_super_admin: { email: 'super.admin.test@vardot.com', password: 'dD.123123ddd' }
```
* Feature: Add Arabic language if we do not have it to languages in the system

## List of Features in the step 2 apply tests:
--------------------------------------------------------------------------------


### Website Base Requirements
* Feature: Website Base Requirements - User Registration - Only admins login
* Feature: Website Base Requirements - User Roles - Simple Roles
* Feature: Content Editing - Rich Text Editor - Input formats
* Feature: Website Base Requirements - Website Languages - English
* Feature: Website Base Requirements - Website Languages - All content translatable to all languages
* Feature: Content Editing - Rich Text Editor - Convert URLs into links

### User Management
* Feature: User Management - Standard User Management - Request new password
* Feature: User Management - Standard User Management - Admins can create users and assign a role to them
* Feature: User Management - Standard User Management - Login
* Feature: User Management - Have persistent login options and configurations
* Feature: User Management - Standard User Management - Have fine-grained access control of user administrators protections with specific user, or all users in a role
* Feature: User Management - Standard User Management - Users with permission to assign roles may select which roles are available for assignment

### Admin Management
* Feature: Pre-check important administrator and development pages
* Feature: Support Requirements - Standard Support Navigation - Allow site super administrators to switch users and surf the site as that user
* Feature: Admin management - Standard Back-End Navigation - Navigate through the Drupal admin with the keyboard for faster access
* Feature: User Management - Standard User Management - Admins can disable users
* Feature: File & Media Management - Assets Management - Image media and their usage list page for site admins
* Feature: Check JSON:API admin interface and services and Varbase API settings
* Feature: Preview the site in a number of responsive devices

### Content Structure
* Feature: Content Structure - Basic Page
* Feature: Content Structure - Landing Pages
* Feature: Landing Pages - Add any paragraph types to the page
* Feature: Content Structure - Landing Pages - Varbase text and image paragraphs
* Feature: Navigational Features - Breadcrumbs - Standard breadcrumbs
* Feature: Content Structure - Blog post

### Content Management
* Feature: Content Management - Add default [entityqueue] module testing content and configuration
* Feature: Content Management - Standard Entity Queue Management - Have the option to Reverse order in admin view
* Feature: Content Management - Standard Entity Queue Management - Have Entity queue tab inside the full content page and be able to Add to a queue or Remove from a queue
* Feature: Content Management - Add hero slider to entity queue using entity queue form widget
* Feature: Content Management - Cloning content and entities
* Feature: File & Media Management - Assets Management - Ability to embed existing media image library in the rich text editor
* Feature: Content Editing - Rich Text Editor - Easy linking to internal content by searching for content by its titles


## List of features in the step 3 cleanup tests:
--------------------------------------------------------------------------------


* Feature: Delete default testing users
```
test_authenticated
test_editor
test_content_admin
test_seo_admin
test_site_admin
test_super_admin
```

* Feature: Delete Arabic language from the system
* Feature: Cleanup after [entityqueue] module tests
* Feature: Cleanup leftover media from the Media Library
