Feature: Content Editing - Rich Text Editor - Easy linking to internal content by searching for content by its titles
As a content admin
I want to be able to add internal links searching the title of an internal content
So that will ease the work of adding internal links in the rich text editor fields.

  @javascript @local @development @staging @production
  Scenario: Check if inserted raw URL will convert into a link when we save when
  We are using the "Visual editor" text format.
    Given I am a logged in user with the "test_site_admin" user
     When I go to "/node/add/page"
      And I wait
     Then I should see "Create Basic page"
     When I select "full_html" from "Text format"
      And I fill in "Linking to internal content #1 title" for "Title"
      And I fill in the rich text editor field "Body" with "Linking to internal content #1 body"
      And I press "Save"
      And I wait
      And I should see "Linking to internal content #1 body"

  @javascript @local @development @staging @production
  Scenario: Check if inserted raw URL will convert into a link when we save when
  We are using the "Visual editor" text format.
    Given I am a logged in user with the "test_site_admin" user
     When I go to "/node/add/page"
      And I wait
     Then I should see "Create Basic page"
     When I select "full_html" from "Text format"
      And I fill in "Linking to internal content #2 title" for "Title"
      And I fill in the rich text editor field "Body" with " Linking to internal content #2 body "
      And I click on "linkit" command button in the rich text editor field "Body"
      And I wait for AJAX to finish
     Then I should see "Edit link"
     When I fill in "Linking" for "Link"
      And I press the " " key in the "Link" field
      And I press the "t" key in the "Link" field
      And I press the "o" key in the "Link" field
      And I press the "enter" key in the "Link" field
      And I wait for AJAX to finish
     Then I should see "Linking to internal content #1 title"
     When I click "Linking to internal content #1 title" in the "ul" element with the "class" attribute set to "ui-autocomplete"
     Then I should not see "Linking to internal content #1 title"
