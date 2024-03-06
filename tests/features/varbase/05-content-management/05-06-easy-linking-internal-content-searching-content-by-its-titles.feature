Feature: Content Editing - Rich Text Editor - Easy linking to internal content by searching for content by its titles
As a content admin
I want to be able to add internal links searching the title of an internal content
So that will ease the work of adding internal links in the rich text editor fields.

  @javascript @local @development @staging @production
  Scenario: Check if inserted raw URL will convert into a link when we save when We are using the Visual editor text format
    Given I am a logged in user with the "Site admin" user
     When I go to "/node/add/page"
      And wait
     Then I should see "Create Basic page"
     When I select "full_html" from "Text format"
      And I fill in "Linking to internal content #1 title" for "Title"
      And I fill in the rich text editor field "Body" with "Linking to internal content #1 body"
      And I select "published" from "edit-moderation-state-0-state"
      And I press the "Save" button
      And wait
     Then I should see "Linking to internal content #1 body"
     When I go to "/node/add/page"
      And wait
     Then I should see "Create Basic page"
     When I select "full_html" from "Text format"
      And I fill in "Linking to internal content #2 title" for "Title"
      And I fill in the rich text editor field "Body" with " Linking to internal content #2 body "
      And I click on "Link" command button in the rich text editor field "Body"
      And wait for AJAX to finish
      And wait 2s
      And wait for AJAX to finish
     Then I should see "Link URL"
     When I fill in "Linking" for "Link URL"
      And I keypress " " in "Link URL" field
      And I keypress "t" in "Link URL" field
      And I keypress "o" in "Link URL" field
      And I keypress "enter" in "Link URL" field
      And wait for AJAX to finish
      And wait 2s
      And wait for AJAX to finish
     Then I should see "Linking to internal content #1 title"
     When I click "Linking to internal content #1 title" in the "ul" element with the "class" attribute set to "ui-autocomplete"
      And wait for AJAX to finish
      And wait 2s
      And wait for AJAX to finish
      And I click on the save button in "Body" rich text editor field
      And wait
      And I select "published" from "edit-moderation-state-0-state"
      And I press the "Save" button
      And wait
      And I should see "Linking to internal content #2 body"
