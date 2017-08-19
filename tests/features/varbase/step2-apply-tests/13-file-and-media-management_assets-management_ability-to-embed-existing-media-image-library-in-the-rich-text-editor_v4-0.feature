Feature: File & Media Management - Assets Management - Ability to embed existing media image library in the rich text editor
As a content admin
I want to be able to embed existing files from the library of files in the CKEditor
So that it will show up under that rich text field without having to upload the image for each content

  Background:
    Given I am a logged in user with the "test_super_admin" user

  # Create the Basic page and upload the file to the library before the test case.
  # ----------------------------------------------------------------------------
   @javascript @local @development @staging @production
   Scenario: Create the "Test Basic page to embed existing files" content.
      When I go to "node/add/page"
       And I wait
       And I fill in "Test Basic page to embed existing files" for "Title"
       And I fill in the rich text editor field "Body" with "Test Basic page body to embed existing files"
       And I press the "Save" button
       And I wait
      Then I should see "Basic page Test Basic page to embed existing files has been created."

   @local @development @staging @production
   Scenario: Upload the "Embed Flag Earth" file.
      When I go to "/admin/content/media"
       And I wait
      Then I should see "Add media"
      When I click "Add media"
       And I wait
      Then I should see "Document"
       And I should see "Image"
       And I should see "Video"
      When I go to "/media/add/image"
       And I wait
      Then I should see "Allowed types: png gif jpg jpeg."
      When I attach the file "flag-earth.jpg" to "Image"
       And I wait
       And I press the "Save" button
       And I wait
       And I fill in "Embed Flag Earth in space" for "field_image[0][alt]"
       And I fill in "Embed Flag Earth all earth in space" for "field_image[0][title]"
       And I fill in "Embed Flag Earth" for "Media name"
       And I press the "Save" button
       And I wait
      Then I should see "Embed Flag Earth"
       And I wait
      When I go to "/admin/content/media"
      Then I should see "Add media"
       And I should see the "Edit" in the "Embed Flag Earth" row
  #-----------------------------------------------------------------------------

  @javascript @local @development @staging @production
  Scenario: Check if we are able to embed existing files library in the rich text editor.
     When I go to "admin/content"
      And I wait
     Then I should see "Content"
     When I fill in "Test Basic page to embed existing files" for "Title"
      And I press the "Filter" button
      And I wait
     Then I should see "Test Basic page to embed existing files"
     When I click "Test Basic page to embed existing files"
      And I wait
     Then I should see "Test Basic page body to embed existing files"
     When I click "Edit"
      And I wait
     Then I should see "Edit Basic page Test Basic page to embed existing files"
     When I move focus to "Body" rich text editor field
      And I click the editor media browser command button
      And I wait for AJAX to finish
     Then the editor media browser should be open
     When I switch to iframe "entity_browser_iframe_editor_media_browser"
      And I fill in "Embed Flag Earth" for "Search keywords"
      And I press the "Search" button
      And I wait for AJAX to finish
     Then I should see image with the "Embed Flag Earth all earth in space" title text
     When I double click on the image with the "Embed Flag Earth all earth in space" title text
      And I wait for AJAX to finish
      And I switch to main frame
      And I wait for AJAX to finish
      And I fill in "Embed Flag Earth custom Caption text" for "Caption"
      And I fill in "Embed Flag Earth custom Alt text" for "Alternative text"
      And I fill in "Embed Flag Earth custom title" for "Title"
     When I click "Embed" in the "button" element with the "class" attribute set to "button button--primary js-form-submit form-submit ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only"
      And I wait for AJAX to finish
     When I press "Save"
      And I wait
     Then I should see image with the "Embed Flag Earth all earth in space" title text
