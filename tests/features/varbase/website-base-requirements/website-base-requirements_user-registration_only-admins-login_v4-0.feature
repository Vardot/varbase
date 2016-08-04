Feature: Website Base Requirements - User Registration - Only admins login
  As an anonymous user
  I will not be able to register as a user in the website
  So that I will need a site admin or super admin to add me to the website

  Background:
    Given I am an anonymous user

  Scenario: Check if a not logged in user can create an account
     When I go to "/user"
     Then I should not see "Create new account"

  Scenario: Check if a not logged in user can register an account
     When I go to "/user/register"
     Then I should see "Access denied"

  Scenario: Check if a not logged in user can access administration pages
     When I go to "/admin"
     Then I should see "Access denied"
