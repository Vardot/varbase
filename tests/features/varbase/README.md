  Varbase Gherkin features.
  ------------------------------------------------------------------------------
  A list of features and scenarios to have a full test over Varbase 8.x-4.x

  If you want to run all Gherkin Features over a new Varbase site.
  You will need to create the list of Testing users, Arabic
  languages to the site.

  # --------------------------------------------------------------------------
  # You can run the following command:
  # --------------------------------------------------------------------------
  $ bin/behat features/varbase/ --format pretty --out std  --format html  --out reports/report-$( date '+%Y-%m-%d_%H-%M-%S' )

  After that you can see the report in the ../behat/reports folder.

  If you want to run the test in steps, if you are not interested in the
  initialization and cleaning up after the test.

  $ bin/behat features/varbase/step1-init-tests
  $ bin/behat features/varbase/step2-apply-tests
  $ bin/behat features/varbase/step3-cleanup-tests

================================================================================

List of features in the step 1 init tests:
--------------------------------------------------------------------------------
* Feature: Create default testing users.
* test_authenticated: { email: 'authenticated.test@vardot.com', password: 'dD.123123ddd' }
* test_editor: { email: 'editor.test@vardot.com', password: 'dD.123123ddd' }
* test_content_admin: { email: 'content.admin.test@vardot.com', password: 'dD.123123ddd' }
* test_site_admin: { email: 'site.admin.test@vardot.com', password: 'dD.123123ddd' }
* test_super_admin: { email: 'super.admin.test@vardot.com', password: 'dD.123123ddd' }

Feature: Add Arabic language if we do not have it to languages in the system.



List of Features in the step 2 apply tests:
--------------------------------------------------------------------------------
* 01 - Feature: Website Base Requirements - User Registration - Only admins login
* 02 - Feature: Website Base Requirements - User Roles - Simple Roles
* 03 - Feature: User Management - Standard User Management - Request new password
* 04 - Feature: Website Base Requirements - Website Languages - All content translatable to all languages
* 05 - Feature: User Management - Standard User Management - Admins can create users and assign a role to them
* 06 - Feature: Website Base Requirements - Website Languages - English
* 07 - Feature: User Management - Standard User Management - Login
* 08 - Feature: Content Editing - Rich Text Editor - Convert URLs into links
* 09 - Feature: Content Editing - Rich Text Editor - Easy linking to internal content by searching for content by its titles
* 10 - Feature: Content Editing - Rich Text Editor - Input formats
* 11 - Feature: Content Structure Features - Basic Pages - Basic page
* 12 - Feature: Content Structure Features - Basic Pages - Pages with pre-defined layouts
* 13 - Feature: File & Media Management - Assets Management - Ability to embed existing media image library in the rich text editor
* 14 - Feature: File & Media Management - Assets Management - Image media and their usage list page for site admins
* 15 - Feature: Support Requirements - Standard Support Navigation - Allow site super administrators to switch users and surf the site as that user.
* 16 - Feature: Navigational Features - Breadcrumbs - Standard breadcrumbs
* 17 - Feature: Add default [entityqueue] module testing content and configuration.
* 18 - Feature: Module Requirements - Standard Entity Queue Management - Have the option to Reverse order in admin view.
* 19 - Feature: Module Requirements - Standard Entity Queue Management - Have Entityqueue tab inside the full content page and be able to Add to a queue or Remove from a queue
* 20 - Feature: Module Requirements - Standard Back-End Navigation - Navigate through the Drupal admin with the keyboard for faster access
* 21 - Feature: user requirements - Have persistent login options and configurations.
* 22 - Feature: User Management - Standard User Management - Admins can disable users
* 23 - Feature: User Management - Standard User Management - Users with permission to assign roles may select which roles are available for assignment.
* 24 - Feature: User Management - Standard User Management - Have fine-grained access control of user administrators protections with specific user, or all users in a role.
* 25 - Feature: Landing Pages - Add any paragraph types to the page.
* 26 - Feature: Content Structure Features - Landing Pages - Varbase text and image paragraphs.


List of features in the step 2 cleanup tests:
--------------------------------------------------------------------------------
* Feature: Delete default testing users.
*          test_authenticated, test_editor, test_content_admin, test_site_admin,
           test_super_admin

* Feature: Delete Arabic language from the system.
* Feature: Cleanup after [entityqueue] module tests.
