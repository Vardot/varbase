Feature: Website Base Requirements - User Registration - Only admins login
As an anonymous user
I will not be able to register as a user in the website
So that I will need a site admin or super admin to add me to the website

  Background: 
    Given I am an anonymous user

  @javascript @local @development @staging @production 
  Scenario: Check that create new account options does not appear for anonymous users
     When I go to "/user"
      And I wait
     Then I should not see "Create new account"

  @javascript @local @development @staging @production
  Scenario: Check that only admin can create an account
     When I go to "/user/register"
      And I wait
     Then I should see "Access denied"

  @javascript @local @development @staging @production
  Scenario: Verify that anonymous users cannot access admin pages
     When I go to "/admin"
      And I wait
     Then I should see "Access denied"
