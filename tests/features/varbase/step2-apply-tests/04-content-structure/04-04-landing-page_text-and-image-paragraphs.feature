Feature: Content Structure - Landing Pages - Varbase text and image paragraphs.
As a logged in user with a permission to mange Landing pages
I want to be able to add number of Text and image paragraph compoments
So that the "Landing page" will have text and images in right and left view.

 @local @development @staging @production
  Scenario: Upload the "Embed Flag Earth" file and Upload the "Mars panorama image" file.
     Given I am a logged in user with the "test_site_admin" user
      When I go to "/admin/content/media"
       And I wait
      Then I should see "Add media"
      When I click "Add media"
       And I wait
      Then I should see "Image"
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
  #-----------------------------------------------------------------------------
  #  Upload the "Mars panorama image" file.
      When I go to "/admin/content/media"
       And I wait
      Then I should see "Add media"
      When I click "Add media"
       And I wait
      Then I should see "Image"
      When I go to "/media/add/image"
       And I wait
      Then I should see "Allowed types: png gif jpg jpeg."
      When I attach the file "mars-panorama-image-6000x1000.jpg" to "Image"
       And I wait
       And I press the "Save" button
       And I wait
       And I fill in "Mars panorama" for "field_image[0][alt]"
       And I fill in "Mars panorama image" for "field_image[0][title]"
       And I fill in "Mars panorama" for "Media name"
       And I press the "Save" button
       And I wait
      Then I should see "Mars panorama"
  #-----------------------------------------------------------------------------

  @javascript @local @development @staging @production
  Scenario: Check if a user with a permission to manage "Landing page" content type create a new Landing page.

    Given I am a logged in user with the "test_site_admin" user
     When I go to "node/add/landing_page"
      And I wait
      And I fill in "Test landing page title for text and image paragraphs" for "Title"
      And I fill in "Test landing page body description." for "Page description"

  # Add Rich text centered
      And I press "Add Component"
      And I wait
      And I scrolldown
      And I press "Rich Text"
      And I wait for AJAX to finish
      And I fill in the rich text editor field "Text" with "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur tortor diam, interdum in quam in, vehicula varius sem. Sed eu augue diam. Proin elementum bibendum tristique. Nam at ante sem. Mauris suscipit felis eget orci porttitor, feugiat viverra elit commodo. Proin quis erat laoreet, tempor nisl nec, varius quam. Maecenas malesuada est sollicitudin euismod posuere."
      And I select all text in "Text" field
      And I click on "justifycenter" command button in the rich text editor field "Text"
      And I wait
      And I press "Save"
     Then I should see "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur tortor diam, interdum in quam in, vehicula varius sem. Sed eu augue diam. Proin elementum bibendum tristique. Nam at ante sem. Mauris suscipit felis eget orci porttitor, feugiat viverra elit commodo. Proin quis erat laoreet, tempor nisl nec, varius quam. Maecenas malesuada est sollicitudin euismod posuere." in the "p" element with the "class" attribute set to "text-align-center"

  # Add Text and Image -> image to the right
     When I click "Edit"
      And I wait
      And I scrolldown
      And I press "Add Component"
      And I wait
      And I press "Text and image"
      And I wait for AJAX to finish
      And I fill in the rich text editor field "Text" with "In eros ipsum, mattis vitae vulputate eu, blandit non risus. Maecenas ultricies volutpat massa id hendrerit. Phasellus magna quam, lacinia sed justo pulvinar, tristique finibus felis. Quisque in sagittis tellus. Curabitur in est at quam maximus elementum. Pellentesque interdum tincidunt nisl, ac efficitur elit aliquam id. Integer egestas neque ut risus tincidunt semper."
      And I select all text in "Text" field
      And I click on "justifycenter" command button in the rich text editor field "Text"
      And I wait
      And I click "Image"
      And I press the "Select an image" button
      And I wait for AJAX to finish
      And the image media browser should be open
      And I switch to iframe "entity_browser_iframe_image_browser"
      And I fill in "Embed Flag Earth" for "Search keywords"
      And I press the "Search" button
      And I wait for AJAX to finish
     Then I should see image with the "Embed Flag Earth all earth in space" title text
     When I click on the image with the "Embed Flag Earth all earth in space" title text
      And I press the "Select an image" button
      And I wait
      And I switch to main frame
      And I wait
      And I expand the field "styling-settings"
      And I click "Content settings"
      And I select "Right" from "Image position"
      And I press "Save"
     Then I should see the "0" "wrapper" with "align2left" class

  # Add Text and Image -> image to the left
     When I click "Edit"
      And I wait
      And I scrolldown
      And I press "Add Component"
      And I wait
      And I press "Text and image"
      And I wait for AJAX to finish
      And I fill in the rich text editor field "Text" with "Integer pellentesque nisi leo, et bibendum urna egestas in. Vestibulum vestibulum est aliquam, volutpat velit ut, mollis urna. Quisque facilisis a velit a condimentum. Nulla sit amet elementum enim. Aenean nulla ante, fermentum sed facilisis in, porttitor in ex."
      And I select all text in "Text" field
      And I click on "justifycenter" command button in the rich text editor field "Text"
      And I wait
      And I click "Image"
      And I press the "Select an image" button
      And I wait for AJAX to finish
      And the image media browser should be open
      And I switch to iframe "entity_browser_iframe_image_browser"
      And I fill in "Mars panorama" for "Search keywords"
      And I press the "Search" button
      And I wait for AJAX to finish
     Then I should see image with the "Mars panorama image" title text
     When I click on the image with the "Mars panorama image" title text
      And I press the "Select an image" button
      And I wait
      And I switch to main frame
      And I wait
      And I expand the field "styling-settings"
      And I click "Content settings"
      And I select "Medium" from "Width"
      And I select "Left" from "Image position"
      And I press "Save"
      And I wait
     Then I should see the "1" "wrapper" with "align2right" class
