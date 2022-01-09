Feature: User Management - Standard User Management - Login
As a visitor with an existing user account
I want to be able to login to the site
So that I will be able to view/add/edit/ or delete content in the site

  @javascript @local @development @staging @production
  Scenario: Check if a visitor can login with a valid username and password
    Given I am on "user/login"
      And I wait 6s
     When I fill in "Normal user" for "Email or username"
      And I fill in "dD.123123ddd" for "Password"
      And I scroll to bottom
      And I wait 2s
      And I press "Log in"
      And wait
     Then I should see "Normal user"

  @javascript @local @development @staging @production
  Scenario: Verify a form error after not entering the username or password when we login
    Given I am on "user/login"
      And I wait 6s
     When I fill in " " for "Email or username"
      And I fill in " " for "Password"
      And I scroll to bottom
      And I wait 2s
     When I press "Log in"
      And wait
     Then I should see "Email or username field is required."
      And I should see "Password field is required"
