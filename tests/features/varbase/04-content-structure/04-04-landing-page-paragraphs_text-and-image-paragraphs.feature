Feature: Content Structure - Landing page (Paragraphs) - Varbase text and image paragraphs
As a logged in user with a permission to mange Landing page (Paragraphs)
I want to be able to add number of Text and image paragraph compoments
So that the "Landing page (Paragraphs)" will have text and images in right and left view.

  @javascript @local @development @staging @production
  Scenario: Upload the Embed Flag Earth file
     Given I am a logged in user with the "Site admin" user
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
  #-----------------------------------------------------------------------------

  @javascript @local @development @staging @production
  Scenario: Check if a user with a permission to manage Landing page (Paragraphs) content type create a new Landing page

    Given I am a logged in user with the "Site admin" user
     When I go to "/node/add/landing_page"
      And I wait
      And I fill in "Test landing page title for text and image paragraphs" for "Title"
      And I fill in "Test landing page body description." for "Page description"
      When I press "+ Add"
       And I wait for AJAX to finish
       And I wait for 1 second
       And I select the "text_and_image" paragraph component
       And I wait for AJAX to finish
      Then I should see "Text and image"
       And I should see "No media items are selected."
      When I press "field_image-media-library-open-button-field_lp_paragraphs-0-subform"
       And I wait for AJAX to finish
       And I should see "Name"
      When I fill in "Flag Earth" for "Name"
       And I press the "Apply filters" button
       And I wait for AJAX to finish
      Then I should see image with the "Flag Earth all earth in space" title text
      When I check the box "media_library_select_form[0]"
       And I wait for AJAX to finish
       And I press "dialog-submit"
       And I wait for AJAX to finish
       And I scroll up
      Then I should see "The maximum number of media items have been selected."
      When I click "Text"
       And I fill in the rich text editor field "Text" with "In eros ipsum, mattis vitae vulputate eu, blandit non risus. Maecenas ultricies volutpat massa id hendrerit. Phasellus magna quam, lacinia sed justo pulvinar, tristique finibus felis. Quisque in sagittis tellus. Curabitur in est at quam maximus elementum. Pellentesque interdum tincidunt nisl, ac efficitur elit aliquam id. Integer egestas neque ut risus tincidunt semper."
       And I select all text in "Text" field
       And I click on "justifycenter" command button in the rich text editor field "Text"
       And I wait
       And I select "published" from "edit-moderation-state-0-state"
       And I press the "Save" button
       And I wait
      Then I should see "In eros ipsum, mattis vitae vulputate eu, blandit"
       And I should see image with the "Flag Earth all earth in space" title text
