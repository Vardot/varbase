Feature: File & Media Management - Assets Management - Ability to embed existing media image library in the rich text editor
As a content admin
I want to be able to embed existing files from the library of files in the CKEditor
So that it will show up under that rich text field without having to upload the image for each content

  Background:
    Given I am a logged in user with the "Site admin" user

  # Create the Basic page and upload the file to the library before the test case.
  # ----------------------------------------------------------------------------
   @javascript @local @development @staging @production
   Scenario: Create the Test Basic page to embed existing files content
      When I go to "/node/add/page"
       And I wait
       And I fill in "Test Basic page to embed existing files" for "Title"
       And I fill in the rich text editor field "Body" with "Test Basic page body to embed existing files"
       And I select "published" from "edit-moderation-state-0-state"
       And I press the "Save" button
       And I wait
      Then I should see "Basic page Test Basic page to embed existing files has been created."

   @javascript @local @development @staging @production
   Scenario: Upload the  Embed Flag Earth file
      When I go to "/media/add/image"
       And I wait
      Then I should see "Allowed types: png gif jpg jpeg."
      When I attach the file "flag-earth.jpg" to "edit-field-media-image-0-upload"
       And I wait
       And I press the "Save" button
       And I wait
       And I fill in "Embed Flag Earth in space" for "field_media_image[0][alt]"
       And I fill in "Embed Flag Earth all earth in space" for "field_media_image[0][title]"
       And I fill in "Embed Flag Earth" for "name[0][value]"
       And I check the box "Show in media library"
       And I press the "Save" button
       And I wait
      Then I should see "Embed Flag Earth"
