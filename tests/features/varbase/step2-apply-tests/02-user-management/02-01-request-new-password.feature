Feature: User Management - Standard User Management - Request new password
As a user with a ready user account
I will want to be able to Request new password
So that I can reset my password for the account

  Background:
    Given I am not logged in

  @local @development @staging @production
  Scenario: Check that an anonymous user can reset his or her password
     When I go to "/user/login"
      And I wait
     Then I should see "Forgot your password?"

  @javascript @local @development @staging @production
  Scenario: Verify that the system cannot send an email to non-existing users or emails
     When I go to "/user/password"
      And I wait
     Then I should see "Username or email address"
     When I fill in "not.existing.email@vardot.com" for "Username"
      And I press the "edit-submit" button
      And I wait
      And I fill in "not.existing.email@vardot.com" for "Username"
      And I wait 8 seconds
      And I press the "edit-submit" button
      And I wait
     Then I should see "Login with"
