Feature: User Management - Standard User Management - Request new password
As a user with a ready user account
I will want to be able to Request new password
So that I can reset my password for the account

  Background:
    Given I am not logged in

  @javascript @local @development @staging @production
  Scenario: Check that an anonymous user can reset his or her password
     When I go to "/user/login"
      And I wait
     Then I should see "Forgot your password?"

  @javascript @local @development @staging @production
  Scenario: Verify that the system cannot send an email to non-existing users or emails
     When I go to "/user/password"
      And I wait 6s
     Then I should see "Email"
     When I fill in "not.existing.email@vardot.com" for "Email"
      And I scroll to the bottom
      And I wait 2s
      And I press the "Submit" button
      And I wait
     Then I should see "If the username or email address exists and is active, further instructions have been sent to your email address."
