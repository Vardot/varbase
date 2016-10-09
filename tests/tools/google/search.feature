Feature: Search google

  @javascript @tools @google
  Scenario: To search in Google about Varbase.
    Given I go to "http://google.com" website
      And wait
     Then I should see "Google"
     When I fill in "Varbase" for "q"
      And I press "Search"
      And wait for 10s
     Then I should see "results"
      And I wait 20s
  
