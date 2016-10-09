Feature: Test screenshot example
As a QA
I want to be able to save a screenshot on demand
So that I will be able to save the status of the page at that time.

  @javascript @tools
  Scenario: To have a screenshot for the Vardot's the team page.
    Given I go to "https://www.vardot.com" website
      And I wait
     When I click "About"
      And I wait
      And I wait
     Then I should see "Meet the team"
      And I save a screenshot in "vardot_the-team-page.png"
  
