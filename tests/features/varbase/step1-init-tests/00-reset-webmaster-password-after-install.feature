Feature: Reset webmaster password after install.

  @init @tools @local @development @staging
  Scenario: Check if webmaster have to reset the password after install.
    Given I am a logged in user with the "webmaster" user
     When I go to "user/1/edit"
      And I wait
     Then I should see "webmaster"
     When I fill in "dD.123123ddd" for "Current password"
      And I fill in "dD.123123ddd" for "Password"
      And I fill in "dD.123123ddd" for "Confirm password"
      And I press "Save"
      And I wait
     Then I should see "The changes have been saved."
    