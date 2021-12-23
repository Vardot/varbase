Feature: Content Structure - Landing page (Paragraphs)
As a logged in user with a permission to manage Landing page (Paragraphs).
I want to be able to add a "Landing page" which has got predefined set of paragrphs
So that the "Landing page (Paragraphs)" will show up in the structured menu under its parent page

  @javascript @local @development @staging @production
  Scenario: Check if we do have the Landing page (Paragraphs) content type
    Given I am a logged in user with the "webmaster" user
     When I go to "/admin/structure/types"
      And I wait
     Then I should see "Landing page (Paragraphs)"

  @javascript @local @development @staging @production
  Scenario: Check that the Landing page (Paragraphs) content type has paragraphs field
    Given I am a logged in user with the "webmaster" user
     When I go to "/admin/structure/types/manage/landing_page/fields"
      And I wait
      Then I should see "field_lp_paragraphs"

  @javascript @local @development @staging @production
  Scenario: Check that an Anonymous users can not create a Landing page (Paragraphs)
    Given I am an anonymous user
     When I go to "/node/add/landing_page"
      And I wait
     Then I should see "Access denied"
      And I should see "You are not authorized to access this page."

  @javascript @local @development @staging @production
  Scenario: Check that an authenticated user can not create a Landing page (Paragraphs)
    Given I am a logged in user with the "Normal user" user
     When I go to "/node/add/landing_page"
      And I wait
     Then I should see "Access denied"
      And I should see "You are not authorized to access this page."

  @javascript @local @development @staging @production
  Scenario: Check that Editor users can create a Landing page (Paragraphs)
    Given I am a logged in user with the "Editor" user
     When I go to "/node/add/landing_page"
      And I wait
     Then I should not see "Access denied"
      And I should not see "You are not authorized to access this page."

  @javascript @local @development @staging @production
  Scenario: Check that Content Admin users can create a Landing page (Paragraphs)
    Given I am a logged in user with the "Content admin" user
     When I go to "/node/add/landing_page"
      And I wait
     Then I should not see "Access denied"
      And I should not see "You are not authorized to access this page."

  @javascript @local @development @staging @production
  Scenario: Check that Site Admin users can create a Landing page (Paragraphs)
    Given I am a logged in user with the "Site admin" user
     When I go to "/node/add/landing_page"
      And I wait
     Then I should not see "Access denied"
      And I should not see "You are not authorized to access this page."
