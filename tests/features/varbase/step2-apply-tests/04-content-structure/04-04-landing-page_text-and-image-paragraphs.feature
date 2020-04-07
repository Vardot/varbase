Feature: Content Structure - Landing Pages - Varbase text and image paragraphs
As a logged in user with a permission to mange Landing pages
I want to be able to add number of Text and image paragraph compoments
So that the "Landing page" will have text and images in right and left view.

 @local @development @staging @production
  Scenario: Upload the Embed Flag Earth file
     Given I am a logged in user with the "test_site_admin" user
      When I go to "media/add/image"
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
  Scenario: Check if a user with a permission to manage Landing page content type create a new Landing page

    Given I am a logged in user with the "test_site_admin" user
     When I go to "node/add/landing_page"
      And I wait
      And I fill in "Test landing page title for text and image paragraphs" for "Title"
      And I fill in "Test landing page body description." for "Page description"

  # Add Rich text centered
      And I wait for AJAX to finish
      And I wait for 1 second
      And I press "Add Component"
      And I wait for AJAX to finish
      And I wait for 1 second
      And I select the "bp_simple" paragraph component
      And I wait for AJAX to finish
      And I fill in the rich text editor field "Text" with "Lorem ipsum dolor sit amet1, consectetur adipiscing elit. Curabitur tortor diam, interdum in quam in, vehicula varius sem. Sed eu augue diam. Proin elementum bibendum tristique. Nam at ante sem. Mauris suscipit felis eget orci porttitor, feugiat viverra elit commodo. Proin quis erat laoreet, tempor nisl nec, varius quam. Maecenas malesuada est sollicitudin euismod posuere."
      And I select all text in "Text" field
      And I click on "justifycenter" command button in the rich text editor field "Text"
      And I wait
     Then I should see "Rich Text"

  # Add Text and Image -> image to the right

      When I press "Add Component"
       And I wait for AJAX to finish
       And I wait for 1 second
       And I select the "text_and_image" paragraph component
       And I wait for AJAX to finish
       And I wait 5s
      Then I should see "Text and image"
      When I press "field_lp_paragraphs_1_subform_field_image_entity_browser_entity_browser"
       And I wait for AJAX to finish
       And I wait 5s
      Then the "entity_browser_iframe_image_browser" media browser should be open
      When I switch to iframe "entity_browser_iframe_image_browser"
       And I wait 5s
      Then I should see "Media name"
      When I fill in "Flag Earth" for "Media name"
       And I press the "Search" button
       And wait max of 5s
      Then I should see image with the "Flag Earth all earth in space" title text
      When I double click on the image with the "Flag Earth all earth in space" title text
       And I wait for AJAX to finish
       And wait max of 5s
       And I switch to parent
       And I wait for AJAX to finish
       And wait max of 5s
      When I click "Text"
       And I fill in the rich text editor field "Text" with "In eros ipsum, mattis vitae vulputate eu, blandit non risus. Maecenas ultricies volutpat massa id hendrerit. Phasellus magna quam, lacinia sed justo pulvinar, tristique finibus felis. Quisque in sagittis tellus. Curabitur in est at quam maximus elementum. Pellentesque interdum tincidunt nisl, ac efficitur elit aliquam id. Integer egestas neque ut risus tincidunt semper."
       And I select all text in "Text" field
       And I click on "justifycenter" command button in the rich text editor field "Text"
       And I wait
       And I press "Save"
       And I wait
      Then I should see "In eros ipsum, mattis vitae vulputate eu, blandit"
       And I should see image with the "Flag Earth all earth in space" title text 
