Feature: Preview the site in a number of responsive devices
As a site admin user
I want to be able to preview the look and feel of the site in a number of devices
So that I can make sure that the site looks good in small devices too.

  Background:
    Given I am a logged in user with the "webmaster" user

  @javascript @check @local @development @staging @production
  Scenario: Check the site in a number of responsive preview devices
     When I go to the homepage
      And I wait
     Then I should see "Welcome to Varbase"
     When I press "Preview page layout"
     Then I should see "iPhone XS"
      And I should see "iPhone XS Max"
      And I should see "Galaxy S9"
      And I should see "iPad Pro"
      And I should see "Galaxy Tab S4"
