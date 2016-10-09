Feature: Test Selectors
As a QE
I want to show list/add/add from file a list named selectors in the behat system
So that I will be able to pass registored selectors to other feaures.

  Background: 
  # print css and xpath selectors before we start a scenario.
    Given print css selectors
      And print xpath selectors
  
  @tools @local @development @stanging @production
  Scenario: Check if we add selectors from a yml file, that we are able to use them.
  # Add selectors from the xample-selectors.yml file then print list of selectors.
     When I add selectors from "example-selectors.yml" file
     Then print css selectors
      And print xpath selectors
  
  # Add css and xpath selectors in the senario then print list of selectors.
     When I add "mobile logo" selector for "header img#logo" css selector
      And I add "Vertical orientation" selector for "//*[@id='navbar-item--2-tray']/div/div[2]/div/button" xpath selector
     Then print css selectors
      And print xpath selectors
  
