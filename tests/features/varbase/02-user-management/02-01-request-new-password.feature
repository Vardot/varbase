Feature: User Management - Standard User Management - Request new password
      As a user with a ready user account
      I will want to be able to Request new password
      So that I can reset my password for the account

  @javascript @local @development @staging @production
  Scenario: Check that an anonymous user can reset his or her password
    Given I am not logged in
     When I go to "/user/login"
      And wait
     Then I should see "Forgot your password?"

  @javascript @local @development @staging @production
  Scenario: Verify that the system cannot send an email to non-existing emails and redirect to the homepage
    Given I am on the homepage
     When I go to "/user/password"
      And I wait 3s
     Then I should see "Username or email address"
     When I fill in "not-existing-email@vardot.com" for "Username or email address"
      And I press the "Reset" button
      And I wait 3s
     Then I should be on the homepage

  @javascript @local @development @staging @production
  Scenario: Verify password reset with non-existing username
    Given I am not logged in
     When I go to "/user/password"
      And I wait 3s
     Then I should see "Username or email address"
     When I fill in "nonexistinguser" for "Username or email address"
      And I press the "Reset" button
      And I wait 3s
     Then I should see "If nonexistinguser is a valid account, an email will be sent with instructions to reset your password." in the "div" element with the "aria-label" attribute set to "Status message"
