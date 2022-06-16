Feature: User Management - Standard User Management - Admins can create users and assign a role to them
As a site admin user
I want to be able to create new user accounts and assign roles to them
So that they will be able to use the site.

  Background:
    Given I am a logged in user with the "webmaster" user

  @javascript @local @development @staging @production
  Scenario: Check if admins can see all parts and filters in the People administration page
     When I go to "/admin/people"
      And I wait
     Then I should see "People"
      And I should see "Add user"
      And I should see "Name or email contains"
      And I should see "Status"
      And I should see "Role"
      And I should see "Registered date (from)"
      And I should see "Registered date (to)"
      And I should see "Username"
      And I should see "Operations"

  @javascript @local @development @staging @production
  Scenario: Check if admins can create a new user account as an authenticated user
     When I go to "/admin/people/create"
      And I wait
     When I fill in "tester@vardot.com" for "Email"
      And I fill in "tester" for "Username"
      And I fill in "dD.123123ddd" for "Password"
      And I fill in "dD.123123ddd" for "Confirm password"
      And I scroll to bottom
      And I should not see "Default policy"
      And I press "Create new account"

  @javascript @cleanup @local @development @staging @production
  Scenario: Delete the tester user
     When I go to "/admin/people"
      And I fill in "tester" for "Name or email contains"
      And I press "Filter"
      And I wait
     Then I should see "tester"
     When I click "Edit" in the "tester" row
      And I wait
      And I scroll to bottom
      And I click "Cancel account"
      And I wait
     Then I should see "Are you sure you want to cancel the account tester?"
     When I select the radio button "Delete the account and its content. This action cannot be undone."
      And I scroll to bottom
      And I press "Confirm"
      And I wait 10s
     Then I should see "People"
