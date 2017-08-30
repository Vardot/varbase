Feature: User Management - Have persistent login options and configurations.
  As a user which can login to the site.
  I want to have the option to have "Remember Me" option on the user login form.
  So I can persistent my login session independent of setting of a long session lifetime.

  @javascript @check @local @development @staging @production
  Scenario: Check the persistent login configuration.
    Given I am a logged in user with the "webmaster" user
     When I go to "/admin/config/system/persistent_login"
      And I wait
     Then I should see "Persistent Login"
      And I should see "30" value in the "edit-lifetime" input element
      And I should see "0" value in the "edit-max-tokens" input element

  @javascript @check @local @development @staging @production
  Scenario: Check if an authenticated user can login and use the [Remember me] option.
    Given I am not logged in
     When I go to "/user"
      And I wait
     Then I should see "Log in"
      And I should see "Remember me"
     When I fill in "test_authenticated" for "Username"
      And I fill in "dD.123123ddd" for "Password"
      And I check the box "Remember me"
      And I press the "edit-submit" button
      And I wait
     Then I should see "test_authenticated"