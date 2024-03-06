Feature: Have a look at some of Vardot team and personals.
As a Client
I want to be able to see some of Vardot's staff
So that I will have an idea of personals they have

  @tools
  Scenario: Check the about page.
    Given I go to "https://www.vardot.com" website
      And I wait
     When I click "About"
      And I wait
     Then I should see "meet the team"
  
  @mink:goutte @tools
  Scenario: Go to about page using BrowserKit/Goutte. Check if we can use it.
    Given I go to "https://www.vardot.com" website
      And I wait
     When I click "About"
      And I wait
     Then I should see "meet the team"
  
  
  @mink:selenium2 @tools
  Scenario: Go to about page using mink Selenium2. Check if we can use it.
    Given I go to "https://www.vardot.com" website
      And I wait
     When I click "About"
      And I wait
     Then I should see "meet the team"
  
  
  @mink:zombie @tools
  Scenario: Go to about page using mink Zombie. Check if we can use it.
    Given I go to "https://www.vardot.com" website
      And I wait
     When I click "About"
      And I wait
     Then I should see "meet the team"
  
  
  @mink:sahi @tools
  Scenario: Go to about page using mink Sahi. Check if we can use it.
    Given I go to "https://www.vardot.com" website
      And I wait
     When I click "About"
      And I wait
     Then I should see "meet the team"
  
  
  @javascript @tools
  Scenario: Go to about page using the default javascript_session driver.
    Given I go to "https://www.vardot.com" website
      And I wait
     When I click "About"
      And I wait
     Then I should see "meet the team"
  
  
