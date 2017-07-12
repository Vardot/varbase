Feature: Content Structure Features - Landing Pages - Varbase text and image paragraphs.
As a logged in user with a permission to mange Landing pages
I want to be able to create a new Landing page that will look like this page https://www.getopensocial.com/features
So that the "Landing page" will look like this page https://www.getopensocial.com/features

@javascript @local @development
  Scenario: Check if a user with a permission to manage "Landing page" content type create a new Landing page that will look like this page https://www.getopensocial.com/features

    Given I am a logged in user with the "test_site_admin" user
     When I go to "node/add/landing_page"
      And I wait
      And I fill in "Open Social Features" for "Title"
      And I fill in "Greenpeace Greenwire social network spurs 600% increase in volunteering" for "Page description"
  
  # Add Simple text centered
      And I Expand the "0" select list "dropbutton-multiple"
      And I wait
      And I scrolldown
      And I press "Add Simple"
      And I wait for AJAX to finish
      And I fill in the rich text editor field "Text" with "Open Social allows people to collaborate, organise and find the right talent at the right moment. It is especially suitable for volunteer communities within NGO organisations and to replace existing (proprietary) intranets"
     When I select all text in "Text" field
      And I click on "justifycenter" command button in the rich text editor field "Text"
      And I wait
      And I press "Save"
     Then I should see "Open Social allows people to collaborate, organise and find the right talent at the right moment. It is especially suitable for volunteer communities within NGO organisations and to replace existing (proprietary) intranets" in the "p" element with the "class" attribute set to "text-align-center"
  
  # Add Text and Image -> image to the right 
     When I click "Edit"
      And I wait
      And I scrolldown
      And I Expand the "1" select list "dropbutton-multiple"
      And I wait
      And I press "Add Text and image"
      And I wait for AJAX to finish
      And I fill in the rich text editor field "Text" with "Activity streams The activity stream gives all of your users a personalized overview of your community Our algorithms ensure you only see updates that are relevant to you. For example; if someone likes your post or comments in a group you are following, this will be shown in your timeline Our personalized activity stream is central to all the interactions of individual community members. A lively and engaging timeline will keep your users coming back for more"
     When I select all text in "Text" field
      And I click on "justifycenter" command button in the rich text editor field "Text"
      And I wait
      And I click "Image"
     Then I press the "Select an image" button
      And I wait for AJAX to finish
     When the image media browser should be open
      And I switch to iframe "entity_browser_iframe_image_browser"
      And I fill in "Embed Flag Earth" for "Search keywords"
      And I press the "Search" button
      And I wait for AJAX to finish
     Then I should see image with the "Embed Flag Earth all earth in space" title text
     When I double click on the image with the "Embed Flag Earth all earth in space" title text
      And I switch to main frame
      And I wait
     Then I Expand the field "styling-settings"
      And I select "Grey light" from "Background Color"
      And I click "Content settings"
      And I select "Right" from "Image position"
      And I press "Save"
     Then I should see the "0" "wrapper" with "align2left" class
  
  # Add Text and Image -> image to the left 
     When I click "Edit"
      And I wait
      And I scrolldown
      And I Expand the "2" select list "dropbutton-multiple"
      And I wait
      And I press "Add Text and image"
      And I wait for AJAX to finish
      And I fill in the rich text editor field "Text" with "Events Events connect your on- and offline experiences Your community members can enroll to both private and public events. Event managers set the location and date and control visibility settings. Users can follow events and post comments to keep the discussion rolling or organize their own Events bridge the gap between the on- and offline engagement of your community members. Getting people aligned along common interests ensures the long term health of your community. This makes events a critical part of any successful community building effort"
     When I select all text in "Text" field
      And I click on "justifycenter" command button in the rich text editor field "Text"
      And I wait
      And I click "Image"
     Then I press the "Select an image" button
      And I wait for AJAX to finish
     When the image media browser should be open
      And I switch to iframe "entity_browser_iframe_image_browser"
      And I fill in "Embed Flag Earth" for "Search keywords"
      And I press the "Search" button
      And I wait for AJAX to finish
     Then I should see image with the "Embed Flag Earth all earth in space" title text
     When I double click on the image with the "Embed Flag Earth all earth in space" title text
      And I switch to main frame
      And I wait
     Then I Expand the field "styling-settings"
      And I click "Content settings"
      And I select "Medium" from "Width"
      And I select "Left" from "Image position"
      And I press "Save"
     Then I should see the "1" "wrapper" with "align2right" class
