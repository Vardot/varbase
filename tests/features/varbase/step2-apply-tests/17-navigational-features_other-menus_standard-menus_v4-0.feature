Feature: Navigational Features - Other menus - Standard menus
As a logged as webmaster
I want to be able to add new custom menu, then add menu links
So that I will be able to place the custom menu in regions, and positions

  Background:
    Given I am a logged in user with the "webmaster" user

  @javascript @local @development @staging @production
  Scenario: Add new custom menu
     When I go to "/admin/structure/menu/add"
      And I wait
     When I fill in "Test custom Menu" for "Title"
      And I fill in "Test custom Menu Administrative summary" for "Administrative summary"
      And I press "Save"
      And I wait
      And I wait
      And I wait
     Then I should see "Menu Test custom Menu has been added."
      And I should see "Add link"

  @javascript @local @development @staging @production
  Scenario: Add a list of Menu links to Test custom Menu
     When I go to "/admin/structure/menu/manage/test-custom-menu"
      And I wait
     Then I should see "Add link"
     When I click "Add link"
      And I wait
      And I fill in "Test link 1" for "Menu link title"
      And I fill in "<front>" for "Link"
      And I press "Save"
      And I wait
     Then I should see "The menu link has been saved."
     When I go to "/admin/structure/menu/manage/test-custom-menu"
     When I click "Add link"
      And I fill in "Test link 2" for "Menu link title"
      And I fill in "<front>" for "Link"
      And I press "Save"
      And I wait
     Then I should see "The menu link has been saved."

  @javascript @local @development @staging @production
  Scenario: Delete the Test custom Menu.
     When I go to "admin/structure/menu/manage/test-custom-menu/delete"
      And I wait
     Then I should see "This action cannot be undone."
     When I press "Delete"
      And I wait
     Then I should see "The menu Test custom Menu has been deleted."
