Feature: Admin management - Standard Back-End Navigation - Navigate through the Drupal admin with the keyboard for faster access
As a site admin
I want to be able to navigate through the Drupal admin with the keyboard
So that I will have a faster access to administration pages in the site.

@javascript @check @local @development @staging @production
Scenario: Check if Super Admins can access the Coffee search box to navigate fast between admin pages
  Given I am a logged in user with the "test_super_admin" user
   When I go to the homepage
    And I wait
   Then I should see "Go to"

@javascript @check @local @development @staging @production
Scenario: Check if Site Admins can access the Coffee search box
  Given I am a logged in user with the "test_site_admin" user
   When I go to the homepage
    And I wait
   Then I should see "Go to"

@javascript @check @local @development @staging @production
Scenario: Check if Content Admins can access the Coffee search box
  Given I am a logged in user with the "test_content_admin" user
   When I go to the homepage
    And I wait
   Then I should see "Go to"

@javascript @check @local @development @staging @production
Scenario: Check if Editors can access the Coffee search box
  Given I am a logged in user with the "test_editor" user
   When I go to the homepage
    And I wait
   Then I should see "Go to"

@javascript @check @local @development @staging @production
Scenario: Check if Authenticated users can NOT access the Coffee search box
  Given I am a logged in user with the "test_authenticated" user
   When I go to the homepage
    And I wait
   Then I should not see "Go to"



