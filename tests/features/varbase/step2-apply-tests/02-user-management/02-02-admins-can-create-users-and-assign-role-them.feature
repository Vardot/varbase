Feature: User Management - Standard User Management - Admins can create users and assign a role to them
As a site admin user
I want to be able create new user accounts and assign roles to them
So that they will be able to use the site.

  Background:
    Given I am a logged in user with the "webmaster" user

  @javascript @local @development @staging @production
  Scenario: Check if admins can see the "Add user" button under People administration page.
    Given I go to "/admin/people"
     When I click "Add user"
      And I should see "People"
      And I should see "Username"
      And I should see "Email address"

  @javascript @local @development @staging @production
  Scenario: Check if admins can create a new user account as an (authenticated user).
    Given I go to "/admin/people/create"
     When I fill in "tester@vardot.com" for "Email address"
      And I fill in "Tester" for "Username"
      And I fill in "dD.123123ddd" for "Password"
      And I fill in "dD.123123ddd" for "Confirm password"
      And I press "Create new account"

  @javascript @cleanup @local @development @staging @production
  Scenario: Delete the Tester user.
     When I go to "/admin/people"
      And I fill in "Tester" for "Name or email contains"
      And I press "Filter"
      And I wait
     Then I should see "Tester"
     When I click "Edit" in the "Tester" row
      And I wait
      And I press "Cancel account"
      And I wait
     Then I should see "Are you sure you want to cancel the account Tester?"
     When I select the radio button "Delete the account and its content."
      And I press "Cancel account"
      And I wait 10s
     Then I should see "People"
