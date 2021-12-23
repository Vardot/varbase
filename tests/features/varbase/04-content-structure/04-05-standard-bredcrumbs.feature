Feature: Navigational Features - Breadcrumbs - Standard breadcrumbs
As a Visitor to the site
I want to be able to see the back path
So that I can see path I followed to locate the current page usually near the top of the page

  @javascript @local @development @staging @production
  Scenario: Add the Test Basic page root page to the main menu
    Given I am a logged in user with the "Site admin" user
     When I go to "/node/add/page"
      And I wait
      And I fill in "Test Basic page root title" for "Title"
      And I fill in the rich text editor field "Body" with "Test Basic page root body"
      And I expand the field "edit-menu"
      And I wait
      And I check the box "Provide a menu link"
      And I select "<Main navigation>" from "Parent link"
      And I select "published" from "edit-moderation-state-0-state"
      And I press the "Save" button
      And I wait
     Then I should see "Test Basic page root title"
      And I should see "Test Basic page root body"

  @javascript @local @development @staging @production
  Scenario: Add the Test Basic page sub 1, then check the breadcrumb
    Given I am a logged in user with the "Site admin" user
     When I go to "/node/add/page"
      And I wait
      And I fill in "Test Basic page sub 1 title" for "Title"
      And I fill in the rich text editor field "Body" with "Test Basic page sub 1 body"
      And I expand the field "edit-menu"
      And I wait
      And I check the box "Provide a menu link"
      And I select "Test Basic page root title" from "Parent link"
      And I select "published" from "edit-moderation-state-0-state"
      And I press the "Save" button
      And wait
     Then I should see "Basic page Test Basic page sub 1 title has been created."
      And I should see "Test Basic page sub 1 body"
      And I should see "Test Basic page root title" in the "ol" element with the "class" attribute set to "breadcrumb"
