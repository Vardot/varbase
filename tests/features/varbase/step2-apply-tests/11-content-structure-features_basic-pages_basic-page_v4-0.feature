Feature: Content Structure Features - Basic Pages - Basic page
As a logged in user with a permission to mange Basic pages
I want to be able to add a "Basic page" to the site with a fixed layout
So that the "Basic page" will show up in the structured menu under its parent page

# Check if users with the ( "authenticated user", "Editor", "Content Admin",
# "Site Admin", or "Super Admin" ) role can add [Basic page]

  @javascript @local @development @staging @production
  Scenario: Check if [authenticated user] can add content of "Basic page" type.
    Given I am a logged in user with the "test_authenticated" user
     When I go to "/node/add"
      And I wait
     Then I should not see "Basic page"

  @javascript @local @development @staging @production
  Scenario: Check if [Editor] can add content of "Basic page" type.
    Given I am a logged in user with the "test_editor" user
     When I go to "/node/add"
      And I wait
     Then I should see "Basic page"

  @javascript @local @development @staging @production
  Scenario: Check if [Content Admin] can add content of "Basic page" type.
    Given I am a logged in user with the "test_content_admin" user
     When I go to "/node/add"
      And I wait
     Then I should see "Basic page"

  @javascript @local @development @staging @production
  Scenario: Check if [Site Admin] can add content of "Basic page" type.
    Given I am a logged in user with the "test_site_admin" user
     When I go to "/node/add"
      And I wait
     Then I should see "Basic page"

  @javascript @local @development @staging @production
  Scenario: Check if [Super Admin] can add content of "Basic page" type.
    Given I am a logged in user with the "test_super_admin" user
     When I go to "/node/add"
      And I wait
     Then I should see "Basic page"

  @javascript @local @development @staging @production
  Scenario: Check if the webmaster can add content of "Basic page" type.
    Given I am a logged in user with the "webmaster" user
     When I go to "/node/add"
      And I wait
     Then I should see "Basic page"

  @javascript @local @development @staging @production
  Scenario: Check if a user with a permission to manage "Basic page" content type can create Basic pages content
    Given I am a logged in user with the "test_super_admin" user
     When I go to "/node/add/page"
      And I wait
     Then I should see "Create Basic page"
      And I should see "Language"
      And I should see "Title"
      And I should see "Body"

  @javascript @local @development @staging @production
  Scenario: Check if we can create a Test Basic page we can see Change layout floating button to change the layout.
    Given I am a logged in user with the "test_super_admin" user
     When I go to "node/add/page"
      And I wait
      And I fill in "Test Basic page" for "Title"
      And I fill in the rich text editor field "Body" with "Test Basic page body"
      And I press "Save"
      And I wait
     Then I should see "Basic page Test Basic page has been created."

  @javascript @local @development @staging @production
  Scenario: Check if a user with a permission to manage "Basic page" content type
    Given I am a logged in user with the "test_super_admin" user
     When I go to "admin/content"
      And I wait
     Then I should see "Content"
     When I fill in "Test Basic page" for "Title"
      And I press the "Filter" button
      And I wait
     Then I should see "Test Basic page"
     When I click "Test Basic page"
      And I wait
     Then I should see "Test Basic page body"
     When I click "Edit"
      And I wait
     Then I should see "Edit Basic page Test Basic page"

  @javascript @local @development @staging @production
  Scenario: Check that we did not Allow content of "Basic page" type to have its display controlled by Panelizer.
    Given I am a logged in user with the "webmaster" user
     When I go to "/admin/structure/types/manage/page/display"
      And I wait
     Then the "Panelize this view mode" checkbox should not be checked
