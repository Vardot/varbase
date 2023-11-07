Feature: User Management - Standard User Management - Admins can create users and assign a role to them
As a site admin user
I want to be able to create new user accounts and assign roles to them
So that they will be able to use the site.

  @javascript @local @development @staging @production
  Scenario: Check if admins can see all parts and filters in the People administration page
    Given I am a logged in user with the "webmaster" user
     When I go to "/admin/people"
      And wait
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
    Given I am a logged in user with the "webmaster" user
     When I go to "/admin/people/create"
      And wait
     When I fill in "tester@vardot.com" for "Email"
      And I fill in "tester" for "Username"
      And I fill in "dD.123123ddd" for "Password"
      And I fill in "dD.123123ddd" for "Confirm password"
      And I scroll to bottom
      And I press "Create new account"

  @javascript @cleanup @local @development @staging @production
  Scenario: Delete the tester user
    Given I am a logged in user with the "webmaster" user
     When I go to "/admin/people"
      And I fill in "tester" for "Name or email contains"
      And I press "Filter"
      And wait
     Then I should see "tester"
     When I click "Edit" in the "tester" row
      And wait
      And I scroll to bottom
      And I click "Cancel account"
      And wait
      And wait 3s
     Then I should see "Are you sure you want to cancel the account tester?"
     When I select the radio button "Delete the account and its content. This action cannot be undone."
      And I scroll to bottom
      And I press "Confirm"
      And I wait 10s
     Then I should see "People"

  @javascript @local @development @staging @production
  Scenario: Check the behavior when "Allow custom account name" option is NOT checked in Varbase general settings and NO provided username
    Given I am a logged in user with the "webmaster" user
      And I go to "/admin/config/varbase/settings"
     Then I should see "Varbase general settings"
      And I should see "Allow custom account name"
     When I uncheck the box "Allow custom account name"
     Then I should see the "Allow custom account name" checkbox unchecked
     When I press "Save configuration"
      And wait
     Then I should see "The configuration options have been saved."

     When I go to "/admin/people/create"
      And wait
     When I fill in "test.not.allwed.no.username@vardot.com" for "Email"
      And I fill in "" for "Username"
      And I fill in "dD.123123ddd" for "Password"
      And I fill in "dD.123123ddd" for "Confirm password"
      And I scroll to bottom
      And I press "Create new account"
     When I go to "/admin/people"
     Then I should see "test.not.allwed.no.username"
      And I should not see "email_registration"
     When I click "Edit" in the "test.not.allwed.no.username" row
      And wait
      And I scroll to bottom
      And I click "Cancel account"
      And wait
      And wait 3s
     Then I should see "Are you sure you want to cancel the account test.not.allwed.no.username"
     When I select the radio button "Delete the account and its content. This action cannot be undone."
      And I scroll to bottom
      And I press "Confirm"
      And I wait 5s
     Then I should see "People"

  @javascript @local @development @staging @production
  Scenario: Check the behavior when "Allow custom account name" option is NOT checked in Varbase general settings and provided some username
    Given I am a logged in user with the "webmaster" user
      And I go to "/admin/config/varbase/settings"
     Then I should see "Varbase general settings"
      And I should see "Allow custom account name"
     When I uncheck the box "Allow custom account name"
     Then I should see the "Allow custom account name" checkbox unchecked
     When I press "Save configuration"
      And wait
     Then I should see "The configuration options have been saved."

     When I go to "/admin/people/create"
      And wait
     When I fill in "test.not.allwed.with.username@vardot.com" for "Email"
      And I fill in "Some username" for "Username"
      And I fill in "dD.123123ddd" for "Password"
      And I fill in "dD.123123ddd" for "Confirm password"
      And I scroll to bottom
      And I press "Create new account"
     When I go to "/admin/people"
     Then I should see "test.not.allwed.with.username"
     When I click "Edit" in the "test.not.allwed.with.username" row
      And wait
      And I scroll to bottom
      And I click "Cancel account"
      And wait
      And wait 3s
     Then I should see "Are you sure you want to cancel the account test.not.allwed.with.username"
     When I select the radio button "Delete the account and its content. This action cannot be undone."
      And I scroll to bottom
      And I press "Confirm"
      And I wait 5s
     Then I should see "People"

  @javascript @local @development @staging @production
  Scenario: Check the behavior when "Allow custom account name" option is checked in Varbase general settings and NO provided username
    Given I am a logged in user with the "webmaster" user
      And I go to "/admin/config/varbase/settings"
     Then I should see "Varbase general settings"
      And I should see "Allow custom account name"
     When I check the box "Allow custom account name"
     Then I should see the "Allow custom account name" checkbox checked
     When I press "Save configuration"
      And wait
     Then I should see "The configuration options have been saved."

     When I go to "/admin/people/create"
      And wait
     When I fill in "test.allwed.no.username@vardot.com" for "Email"
      And I fill in "" for "Username"
      And I fill in "dD.123123ddd" for "Password"
      And I fill in "dD.123123ddd" for "Confirm password"
      And I scroll to bottom
      And I press "Create new account"
     When I go to "/admin/people"
     Then I should see "email_registration"
     When I click "Edit" in the "email_registration" row
      And wait
      And I scroll to bottom
      And I click "Cancel account"
      And wait
      And wait 3s
     Then I should see "Are you sure you want to cancel the account email_registration"
     When I select the radio button "Delete the account and its content. This action cannot be undone."
      And I scroll to bottom
      And I press "Confirm"
      And I wait 5s
     Then I should see "People"

  @javascript @local @development @staging @production
  Scenario: Check the behavior when "Allow custom account name" option is checked in Varbase general settings and provided username
    Given I am a logged in user with the "webmaster" user
      And I go to "/admin/config/varbase/settings"
     Then I should see "Varbase general settings"
      And I should see "Allow custom account name"
     When I check the box "Allow custom account name"
     Then I should see the "Allow custom account name" checkbox checked
     When I press "Save configuration"
      And wait
     Then I should see "The configuration options have been saved."

     When I go to "/admin/people/create"
      And wait
     When I fill in "test.allwed.with.username@vardot.com" for "Email"
      And I fill in "Test Account Name" for "Username"
      And I fill in "dD.123123ddd" for "Password"
      And I fill in "dD.123123ddd" for "Confirm password"
      And I scroll to bottom
      And I press "Create new account"
     When I go to "/admin/people"
     Then I should see "Test Account Name"
      And I should not see "test.allwed.with.username"
      And I should not see "email_registration"
     When I click "Edit" in the "Test Account Name" row
      And wait
      And I scroll to bottom
      And I click "Cancel account"
      And wait
      And wait 3s
     Then I should see "Are you sure you want to cancel the account Test Account Name?"
     When I select the radio button "Delete the account and its content. This action cannot be undone."
      And I scroll to bottom
      And I press "Confirm"
      And I wait 5s
     Then I should see "People"
