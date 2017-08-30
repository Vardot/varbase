Feature: File & Media Management - Assets Management - Image media and their usage list page for site admins
As a user with permission to manage files in the site
I want to be able to see the list of files
So that I will be able to manage files, see where they have been used in contents.

  Background:
    Given I am a logged in user with the "test_site_admin" user

  @javascript @local @development @staging @production
  Scenario: Check if content admins can access the content files page.
     When I go to "admin/content/media"
      And I wait
     Then I should see "Add media"
      And I should not see "Access denied"

  @local @development @staging @production
  Scenario: Check if we do have a file named "Flag Earth" , if not then upload the file dependently.
      When I go to "/media/add/image"
       And I wait
      Then I should see "Allowed types: png gif jpg jpeg."
      When I attach the file "flag-earth.jpg" to "Image"
       And I wait
       And I press the "Save" button
       And I wait
       And I fill in "Flag Earth in space" for "field_image[0][alt]"
       And I fill in "Flag Earth all earth in space" for "field_image[0][title]"
       And I fill in "Flag Earth" for "Media name"
       And I press the "Save" button
       And I wait
      Then I should see "Flag Earth"
       And I wait
      When I go to "/admin/content/media"
      Then I should see "Add media"
       And I should see the "Edit" in the "Flag Earth" row

  @javascript @local @development @staging @production
  Scenario: Check if content admins can edit files.
     When I go to "admin/content/media"
      And I wait
     Then I should see "Add media"
     When I fill in "Flag Earth" for "Media name"
      And I press the "Apply" button
      And I wait
     Then I should see "Flag Earth"
     When I click "Flag Earth"
      And I wait
     Then I should see "Flag Earth"
     When I click "Edit"
      And I wait
     Then I should see "Edit Image Flag Earth"
     When I fill in "Flag Earth after edit" for "Media name"
      And I press the "Save" button
      And I wait
     Then I should see "Image Flag Earth after edit has been updated."

  @javascript @local @development @staging @production
  Scenario: Check if content admins can delete files.
     When I go to "admin/content/media"
      And I wait
     Then I should see "Add media"
     When I fill in "Flag Earth after edit" for "Media name"
      And I press the "Apply" button
      And I wait
      And I wait
      And I wait for AJAX to finish
     Then I should see "Flag Earth after edit"
     When I click "Flag Earth after edit"
      And I wait
     Then I should see "Flag Earth after edit"
     When I click "Delete"
      And I wait
     Then I should see "This action cannot be undone."
     When I press the "Delete" button
      And I wait
     Then I should see "The media Flag Earth after edit has been deleted."
