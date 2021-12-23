Feature: Content Structure - Blog post
As a logged in user with a permission to manage Blogs.
I want to be able to add a "Blog" 

  @javascript @local @development @staging @production
  Scenario: Check if we do have the Blog content type
    Given I am a logged in user with the "webmaster" user
     When I go to "/admin/structure/types"
      And I wait
     Then I should see "Blog"
  
  @javascript @local @development @staging @production
  Scenario: Check that Anonymous users can not create a Landing page
    Given I am an anonymous user
     When I go to "/node/add/varbase_blog"
      And I wait
     Then I should see "Access denied"
      And I should see "You are not authorized to access this page."

  @javascript @local @development @staging @production
  Scenario: Check that authenticated users can not create a Landing page
    Given I am a logged in user with the "Normal user" user
     When I go to "/node/add/varbase_blog"
      And I wait
     Then I should see "Access denied"
      And I should see "You are not authorized to access this page."

  @javascript @local @development @staging @production
  Scenario: Check that Editor users can create a Landing page
    Given I am a logged in user with the "Editor" user
     When I go to "/node/add/varbase_blog"
      And I wait
     Then I should not see "Access denied"
      And I should not see "You are not authorized to access this page."

  @javascript @local @development @staging @production
  Scenario: Check that Content Admin users can create a Landing page
    Given I am a logged in user with the "Content admin" user
     When I go to "/node/add/varbase_blog"
      And I wait
     Then I should not see "Access denied"
      And I should not see "You are not authorized to access this page."

  @javascript @local @development @staging @production
  Scenario: Check that Site Admin users can create a Landing page
    Given I am a logged in user with the "Site admin" user
     When I go to "/node/add/varbase_blog"
      And I wait
     Then I should not see "Access denied"
      And I should not see "You are not authorized to access this page."
