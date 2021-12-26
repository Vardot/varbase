Feature: Website Base Requirements - Website Languages - English
As a logged in user with the permission to add content
I want to be able to check if the site has got the English language Enabled
So that can be sure that the website is using the English language as one of the languages.

  @javascript @local @development @staging @production
  Scenario: Check if we can Create Basic page with English for the language of the content
    Given I am a logged in user with the "Content admin" user
      And I go to "/node/add/page"
      And I wait
     When I select "English" from "Language"
     Then I should see "Language"
     When I select "English" from "Language"
      And I fill in "Test English Basic page title by content admin" for "Title"
      And I fill in the rich text editor field "Body" with "Test English Basic page body"
      And I select "published" from "edit-moderation-state-0-state"
      And I press the "Save" button
      And I wait
     Then I should see "Test English Basic page title by content admin"

  @javascript @local @development @staging @production
  Scenario: Check if we can Create Landing page with English for the language of the content
    Given I am a logged in user with the "Content admin" user
      And I go to "/node/add/landing_page"
      And I wait
     When I select "English" from "Language"
     Then I should see "Language"
     When I select "English" from "Language"
      And I fill in "Test English Landing page title by content admin" for "Title"
      And I select "published" from "edit-moderation-state-0-state"
      And I press the "Save" button
      And I wait
     Then I should see "Test English Landing page title by content admin"

  @javascript @local @development @staging @production
  Scenario: Check if we can Create Basic page with English for the language of the content
    Given I am a logged in user with the "Site admin" user
      And I go to "/node/add/page"
      And I wait
     When I select "English" from "Language"
     Then I should see "Language"
     When I select "English" from "Language"
      And I fill in "Test English Basic page title by site admin" for "Title"
      And I fill in the rich text editor field "Body" with "Test English Basic page body"
      And I select "published" from "edit-moderation-state-0-state"
      And I press the "Save" button
      And I wait
     Then I should see "Test English Basic page title by site admin"

  @javascript @local @development @staging @production
  Scenario: Check if we can Create Landing page with English for the language of the content
    Given I am a logged in user with the "Site admin" user
      And I go to "/node/add/landing_page"
      And I wait
     When I select "English" from "Language"
     Then I should see "Language"
     When I select "English" from "Language"
      And I fill in "Test English Landing page title by site admin" for "Title"
      And I select "published" from "edit-moderation-state-0-state"
      And I press the "Save" button
      And I wait
     Then I should see "Test English Landing page title by site admin"
