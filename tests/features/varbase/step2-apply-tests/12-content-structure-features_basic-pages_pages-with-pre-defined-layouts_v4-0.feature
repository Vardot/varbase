Feature: Content Structure Features - Basic Pages - Pages with pre-defined layouts
As a logged in user with a permission to manage Landing pages.
I want to be able to add a "Landing page" which has got predefined layouts
So that the "Landing page" will show up in the structured menu under its parent page

  @javascript @local @development @staging @production
  Scenario: Check if we do have the "Landing page" content type.
    Given I am a logged in user with the "webmaster" user
     When I go to "/admin/structure/types"
      And I wait
     Then I should see "Landing page"

  @javascript @local @development @staging @production
  Scenario: Check that "Landing page" type have its display should not be controlled by Panelizer.
    Given I am a logged in user with the "webmaster" user
     When I go to "/admin/structure/types/manage/landing_page/display"
      And I wait
      And the "Panelize this view mode" checkbox should not be checked

  @javascript @local @development @staging @production
  Scenario: Check that Anonymous users can not create a Landing page.
    Given I am an anonymous user
     When I go to "/node/add/landing_page"
      And I wait
     Then I should see "Access denied"
      And I should see "You are not authorized to access this page."

  @javascript @local @development @staging @production
  Scenario: Check that authenticated users can not create a Landing page.
    Given I am a logged in user with the "test_authenticated" user
     When I go to "/node/add/landing_page"
      And I wait
     Then I should see "Access denied"
      And I should see "You are not authorized to access this page."

  @javascript @local @development @staging @production
  Scenario: Check that Editor users can not create a Landing page.
    Given I am a logged in user with the "test_editor" user
     When I go to "/node/add/landing_page"
      And I wait
     Then I should not see "Access denied"
      And I should not see "You are not authorized to access this page."

  @javascript @local @development @staging @production
  Scenario: Check that Content Admin users can not create a Landing page.
    Given I am a logged in user with the "test_content_admin" user
     When I go to "/node/add/landing_page"
      And I wait
     Then I should not see "Access denied"
      And I should not see "You are not authorized to access this page."
