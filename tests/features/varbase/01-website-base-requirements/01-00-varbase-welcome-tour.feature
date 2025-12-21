Feature: The welcome message should be displayed on first visit to the site
  The welcome message is made possible by having Varbase Tour module

  @javascript @local @development @staging @production
  Scenario: Check if welcome message is enabled
    Given I am a logged in user with the "webmaster" user
      And I go to "/admin/config/varbase/settings"
     Then I should see "Varbase general settings"
      And I should see "Allow site to show welcome message"
     When I check the box "Allow site to show welcome message"
     Then I should see the "Allow site to show welcome message" checkbox checked
     When I press "Save configuration"
      And wait 3s
     Then I should see "The configuration options have been saved."

  @javascript @local @development @staging @production
  Scenario: Check if the Homepage tour was sat ready to navigate throw
    Given I am a logged in user with the "webmaster" user
      And I go to homepage
      And I wait 2s
     Then I should see "Tour"
     When I press "Tour"
      And I wait 2s
     Then I should see "You can always switch on or off the tour from this button."
     When I click next button in tour
      And I wait 2s
     Then I should see "Editing Your Homepage Layout"
      And I should see "You can change your homepage layout and customize what appears in it from the More Actions navigation top bar button"
     When I click next button in tour
      And I wait 2s
     Then I should see "Configure Your Site Structure"
     When I click next button in tour
      And I wait 2s
     Then I should see "Define Your Site Settings"
     When I click next button in tour
      And I wait 2s
     Then I should see "Site Content"

  @javascript @local @development @staging @production
  Scenario: Check if welcome message and tour are displayed
    Given I am a logged in user with the "webmaster" user
      And I go to "/?welcome"
      And I wait 2s
     Then I should see "Welcome to "
      And I should see "Get started"
     When I click "Get started"
      And I wait 6s
     Then I should see "Tour"
     When I click next button in tour
      And I wait 2s
     Then I should see "Editing Your Homepage Layout"
      And I should see "You can change your homepage layout and customize what appears in it from the More Actions navigation top bar button"
     When I click next button in tour
      And I wait 2s
     Then I should see "Configure Your Site Structure"
     When I click next button in tour
      And I wait 2s
     Then I should see "Define Your Site Settings"
     When I click next button in tour
      And I wait 2s
     Then I should see "Site Content"
     When I close the tour
      And I wait 2s
      And I go to "/admin/config/varbase/settings"
     Then I should see "Varbase general settings"
     When I uncheck the box "Allow site to show welcome message"
      And I press "Save configuration"
      And wait 2s

  @javascript @local @development @staging @production
  Scenario: Check if welcome message is disabled after closing it
    Given I am a logged in user with the "webmaster" user
      And I go to "/admin/config/varbase/settings"
     Then I should see "Varbase general settings"
      And I should see "Allow site to show welcome message"
      And I should see the "Allow site to show welcome message" checkbox unchecked
