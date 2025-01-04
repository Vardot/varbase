Feature: File & Media Management - Assets Management - Ability to embed existing media image library in the rich text editor
      As a content admin
      I want to be able to embed existing files from the library of files in the CKEditor
      So that it will show up under that rich text field without having to upload the image for each content

  @javascript @local @development @staging @production
  Scenario: Create the Test Basic page and embed existing media content
    Given I am a logged in user with the "Site admin" user
     When I go to "/node/add/page"
      And wait
      And I fill in "Test Basic page to embed existing media" for "Title"
      And I fill in the rich text editor field "Body" with "Test Basic page body to embed existing media"
      And I select "published" from "edit-moderation-state-0-state--2"
      And I press the "Save as" button
      And wait
     Then I should see "Basic page Test Basic page to embed existing media has been created."
