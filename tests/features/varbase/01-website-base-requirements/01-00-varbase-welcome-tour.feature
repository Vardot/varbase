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
      And I wait
     Then I should see "The configuration options have been saved."

  @javascript @local @development @staging @production
  Scenario: Check if welcome message and tour are displayed
    Given I am a logged in user with the "webmaster" user
      And I go to "/?welcome"
      And I wait 2 seconds
      And I scroll to the bottom
     Then I should see "Welcome to "
      And I should see "Get started"
     When I click "Get started"
      And I wait 2 seconds
     Then I should see "Tour Switch"
     When I click "Next" in the "button" element with the "class" attribute set to "button button--primary shepherd-button "
     Then I should see "Editing Your Homepage Layout"
     When I click "Next" in the "button" element with the "class" attribute set to "button button--primary shepherd-button "
     Then I should see "Start Configuring Your Site Structure"
     When I click "Next" in the "button" element with the "class" attribute set to "button button--primary shepherd-button "
     Then I should see "Define Your Site Settings"
     When I click "Next" in the "button" element with the "class" attribute set to "button button--primary shepherd-button "
     Then I should see "Site Content"

  @javascript @local @development @staging @production
  Scenario: Check if welcome message is disabled after closing it
    Given I am a logged in user with the "webmaster" user
      And I go to "/admin/config/varbase/settings"
     Then I should see "Varbase general settings"
      And I should see "Allow site to show welcome message"
      And I should see the "Allow site to show welcome message" checkbox unchecked
