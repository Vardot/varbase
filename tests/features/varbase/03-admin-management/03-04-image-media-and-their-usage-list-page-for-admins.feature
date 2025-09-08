Feature: File & Media Management - Assets Management - Image media and their usage list page for site admins
      As a user with permission to manage files in the site
      I want to be able to see the list of files
      So that I will be able to manage files, see where they have been used in contents.

  Background:
    Given I am a logged in user with the "Site admin" user

  @javascript @local @development @staging @production
  Scenario: Check if content admins can access the content files page
     When I go to "admin/content/media"
      And wait
     Then I should see "Add media"
      And I should not see "Access denied"

  @javascript @local @development @staging @production
  Scenario: Check if we do have a file named Flag Earth, if not then upload the file dependently
     When I go to "/media/add/image"
      And wait
     Then I should see "Allowed types: png gif jpg jpeg webp."
     When I attach the file "flag-earth.jpg" to "edit-field-media-image-0-upload"
      And wait
      And I press the "Save" button
      And wait 2s
     Then I should see "Alternative text"
     Then I should see "Title"
     When I fill in "Flag Earth in space" for "field_media_image[0][alt]"
      And I fill in "Flag Earth all earth in space" for "field_media_image[0][title]"
      And I fill in "Flag Earth" for "name[0][value]"
      And I check the box "Show in media library"
      And I press the "Save" button
      And wait
     Then I should see "Flag Earth"
      And wait
     When I go to "admin/content/media"
     Then I should see "Add media"
      And I should see the "Edit" in the "Flag Earth" row

  @javascript @local @development @staging @production
  Scenario: Check if content admins can edit files
     When I go to "/admin/content/media"
      And wait
     Then I should see "Add media"
     When I fill in "Flag Earth" for "edit-name"
      And I press the "Filter" button
      And wait 3s
     Then I should see "Flag Earth"
     When I click "Edit" in the "Flag Earth" row
      And wait
     Then I should see "Edit Image Flag Earth"
     When I fill in "Flag Earth after edit" for "name[0][value]"
      And I check the box "Show in media library"
      And I press the "Save" button
      And wait
     Then I should see "Image Flag Earth after edit has been updated."

  @javascript @local @development @staging @production
  Scenario: Check if content admins can delete files
     When I go to "/admin/content/media"
      And wait
     Then I should see "Add media"
     When I fill in "Flag Earth after edit" for "edit-name"
      And I press the "Apply" button
      And wait
      And I scroll to top
     Then I should see "Flag Earth after edit"
     When I click "Edit" in the "Flag Earth after edit" row
      And wait
     Then I should see "Flag Earth after edit"
     When I open the top bar page actions menu
      And wait 1s
     Then I should see "Delete"
     When I click "gin-sticky-edit-delete"
      And wait
     Then I should see "Are you sure you want to delete the media item Flag Earth after edit?"
      And I should see "Deleting this media item will move it to the trash. You can restore it from the trash for a limited period of time (2 months) if necessary."
     When I click the delete button
      And wait
     Then I should see "The media item Flag Earth after edit has been deleted."
