Feature: Landing Pages - Add any paragraph types to the page.
As a logged in user with a permission to mange Landing pages
I want to be able to add any paragraph type to the page
So that the "Landing page" will show up having paragrpahs of different types

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
  Scenario: Check if a user with a permission to manage "Landing page" content type can add paragraphs of type "Carousel"
    Given I am a logged in user with the "test_site_admin" user
     When I go to "node/add/landing_page"
      And I wait
      And I fill in "Test Landing page Carousel" for "Title"
      And I fill in "Test Landing page description Carousel" for "Page description"
      And I press "Add Component"
      And I wait for AJAX to finish
      And I press "Carousel"
      And I wait for AJAX to finish
      And I select "2 Seconds" from "Slide interval"
      And I press "Add Component"
      And I wait for AJAX to finish
      And I press "field_lp_paragraphs_0_subform_bp_slide_content_bp_image_add_more"
      And I wait for AJAX to finish
      And I press the "Select an image" button
      And I wait for AJAX to finish
     Then the image media browser should be open
     When I switch to iframe "entity_browser_iframe_image_browser"
      And I fill in "Mars panorama" for "Search keywords"
      And I press the "Search" button
      And I wait for AJAX to finish
     Then I should see image with the "Mars panorama image" title text
     When I click on the image with the "Mars panorama image" title text
      And I press the "Select an image" button
      And I wait
      And I switch to main frame
      And I wait
      And I press "Add Component"
      And I wait for AJAX to finish
      And I press "field_lp_paragraphs_0_subform_bp_slide_content_bp_image_add_more"
      And I wait for AJAX to finish
      And I press the "Select an image" button
      And I wait for AJAX to finish
     Then the image media browser should be open
     When I switch to iframe "entity_browser_iframe_image_browser"
      And I fill in "Embed Flag Earth" for "Search keywords"
      And I press the "Search" button
      And I wait for AJAX to finish
     Then I should see image with the "Embed Flag Earth all earth in space" title text
     When I click on the image with the "Embed Flag Earth all earth in space" title text
      And I press the "Select an image" button
      And I wait
      And I switch to main frame
      And I wait
      And I press "Save"
      And I wait
     Then I should see "Landing page Test Landing page Carousel has been created"
      And I should see image with the "Embed Flag Earth all earth in space" title text

  @javascript @local @development @staging @production
  Scenario: Check if a user with a permission to manage "Landing page" content type can add paragraphs of type "Accordion"
    Given I am a logged in user with the "test_site_admin" user
     When I go to "node/add/landing_page"
      And I wait
      And I fill in "Test Landing page Accordion" for "Title"
      And I fill in "Test Landing page description Accordion" for "Page description"
      And I wait for AJAX to finish
      And I press "Add Component"
      And I wait
      And I press "Accordion"
      And I wait for AJAX to finish
     Then I should see "styling settings"
     When I expand the field "styling-settings"
      And I press the "Select an image" button
      And I wait for AJAX to finish
     Then the image media browser should be open
     When I switch to iframe "entity_browser_iframe_image_browser"
      And I fill in "Mars panorama" for "Search keywords"
      And I press the "Search" button
      And I wait for AJAX to finish
     Then I should see image with the "Mars panorama image" title text
     When I click on the image with the "Mars panorama image" title text
      And I press the "Select an image" button
      And I wait
      And I switch to main frame
      And I wait
      And I fill in "Accordion Section Title test" for "Accordion section title"
     When I press "Add Component"
      And I press "field_lp_paragraphs_0_subform_bp_accordion_section_0_subform_bp_accordion_section_body_bp_simple_add_more"
      And I wait
     Then I should see "Accordion section body"
     When I fill in the rich text editor field "Text" with "Accordion Section Body test"
      And I press "Save"
     Then I should see "Landing page Test Landing page Accordion has been created"
     When I click "Accordion Section Title test"
      And I wait
     Then I should see "Accordion Section Body test"

  @javascript @local @development @staging @production
  Scenario: Check if a user with a permission to manage "Landing page" content type can add paragraphs of type "Drupal Block"
    Given I am a logged in user with the "test_site_admin" user
     When I go to "node/add/landing_page"
      And I wait
      And I fill in "Test Landing page Drupal Block" for "Title"
      And I fill in "Test Landing page description Drupal Block" for "Page description"
      And I wait for AJAX to finish
      And I press "Add Component"
      And I wait for AJAX to finish
      And I press "Drupal Block"
      And I wait for AJAX to finish
     Then I should see "Block"
     When I select "Site branding" from "Block"
      And I wait
      And I press "Save"
      And I wait
     Then I should see "Landing page Test Landing page Drupal Block has been created"

  @javascript @local @development @staging @production
  Scenario: Check if a user with a permission to manage "Landing page" content type can add paragraphs of type "Columns (Equal)"
    Given I am a logged in user with the "test_site_admin" user
     When I go to "node/add/landing_page"
      And I wait
      And I fill in "Test Landing page Columns (Equal)" for "Title"
      And I fill in "Test Landing page description Columns (Equal)" for "Page description"
      And I wait for AJAX to finish
      And I press "Add Component"
      And I wait for AJAX to finish
      And I press "Columns (Equal)"
      And I wait for AJAX to finish
      And I expand the field "styling-settings"
      And I wait for AJAX to finish
      And I press the "Select an image" button
      And I wait for AJAX to finish
     Then the image media browser should be open
     When I switch to iframe "entity_browser_iframe_image_browser"
      And I fill in "Mars panorama" for "Search keywords"
      And I press the "Search" button
      And I wait for AJAX to finish
     Then I should see image with the "Mars panorama image" title text
     When I click on the image with the "Mars panorama image" title text
      And I press the "Select an image" button
      And I wait
      And I switch to main frame
      And I wait
      And I press "Save"
      And I wait
     Then I should see "Landing page Test Landing page Columns (Equal) has been created"

  @javascript @local @development @staging @production
  Scenario: Check if a user with a permission to manage "Landing page" content type can add paragraphs of type "Columns (Two Uneven)"
    Given I am a logged in user with the "test_site_admin" user
     When I go to "node/add/landing_page"
      And I wait
      And I fill in "Test Landing page Columns (Two Uneven)" for "Title"
      And I fill in "Test Landing page description Columns (Two Uneven)" for "Page description"
      And I wait for AJAX to finish
      And I press "Add Component"
      And I wait for AJAX to finish
      And I press "Columns (Two Uneven)"
      And I wait for AJAX to finish
      And I expand the field "styling-settings"
      And I press the "Select an image" button
      And I wait for AJAX to finish
     Then the image media browser should be open
     When I switch to iframe "entity_browser_iframe_image_browser"
      And I fill in "Mars panorama" for "Search keywords"
      And I press the "Search" button
      And I wait for AJAX to finish
     Then I should see image with the "Mars panorama image" title text
     When I click on the image with the "Mars panorama image" title text
      And I press the "Select an image" button
      And I wait
      And I switch to main frame
      And I wait
      And I press "Save"
      And I wait
     Then I should see "Landing page Test Landing page Columns (Two Uneven) has been created"

  @javascript @local @development @staging @production
  Scenario: Check if a user with a permission to manage "Landing page" content type can add paragraphs of type "Columns (Three Uneven)"
    Given I am a logged in user with the "test_site_admin" user
     When I go to "node/add/landing_page"
      And I wait
      And I fill in "Test Landing page Columns (Three Uneven)" for "Title"
      And I fill in "Test Landing page description Columns (Three Uneven)" for "Page description"
      And I wait for AJAX to finish
      And I press "Add Component"
      And I wait for AJAX to finish
      And I press "Columns (Three Uneven)"
      And I wait for AJAX to finish
      And I press "Add Component"
      And I press "field_lp_paragraphs_0_subform_bp_column_content_3_bp_image_add_more"
      And I wait for AJAX to finish
      And I press the "Select an image" button
      And I wait for AJAX to finish
     Then the image media browser should be open
     When I switch to iframe "entity_browser_iframe_image_browser"
      And I fill in "Mars panorama" for "Search keywords"
      And I press the "Search" button
      And I wait for AJAX to finish
     Then I should see image with the "Mars panorama image" title text
     When I click on the image with the "Mars panorama image" title text
      And I press the "Select an image" button
      And I wait
      And I switch to main frame
      And I wait
      And I press "Save"
      And I wait
     Then I should see "Landing page Test Landing page Columns (Three Uneven) has been created"

  @javascript @local @development @staging @production
  Scenario: Check if a user with a permission to manage "Landing page" content type can add paragraphs of type "Image"
    Given I am a logged in user with the "test_site_admin" user
     When I go to "node/add/landing_page"
      And I wait
      And I fill in "Test Landing page Image" for "Title"
      And I fill in "Test Landing page description Image" for "Page description"
      And I wait for AJAX to finish
      And I press "Add Component"
      And I wait for AJAX to finish
      And I press "Image"
      And I wait for AJAX to finish
      And I press the "Select an image" button
      And I wait for AJAX to finish
     Then the image media browser should be open
     When I switch to iframe "entity_browser_iframe_image_browser"
      And I fill in "Mars panorama" for "Search keywords"
      And I press the "Search" button
      And I wait for AJAX to finish
     Then I should see image with the "Mars panorama image" title text
     When I click on the image with the "Mars panorama image" title text
      And I press the "Select an image" button
      And I wait
      And I switch to main frame
      And I wait
      And I press "Save"
      And I wait
     Then I should see "Landing page Test Landing page Image has been created"
      And I should see image with the "Mars panorama image" title text

  @javascript @local @development @staging @production
  Scenario: Check if a user with a permission to manage "Landing page" content type can add paragraphs of type "Modal"
    Given I am a logged in user with the "test_site_admin" user
     When I go to "node/add/landing_page"
      And I wait
      And I fill in "Test Landing page Modal" for "Title"
      And I fill in "Test Landing page description Modal" for "Page description"
      And I wait for AJAX to finish
      And I press "Add Component"
      And I wait for AJAX to finish
      And I press "Modal"
      And I wait for AJAX to finish
     Then I should see "Components"
     When I fill in "Modal button" for "Modal button text"
      And I fill in "Modal title" for "Modal title"
      And I press "Add Component"
      And I press "field_lp_paragraphs_0_subform_bp_modal_body_bp_simple_add_more"
      And I wait
     Then I should see "Modal body"
      And I fill in the rich text editor field "Text" with "Modal Body test"
     When I press "Save"
     Then I should see "Landing page Test Landing page Modal has been created"
     When I press "Modal button"
      And I wait for AJAX to finish
     Then I should see "Modal title"
      And I should see "Modal Body test"

  @javascript @local @development @staging @production
  Scenario: Check if a user with a permission to manage "Landing page" content type can add paragraphs of type "Rich Text"
    Given I am a logged in user with the "test_site_admin" user
     When I go to "node/add/landing_page"
      And I wait
      And I fill in "Test Landing page Rich Text" for "Title"
      And I fill in "Test Landing page description Rich Text" for "Page description"
      And I press "Add Component"
      And I wait for AJAX to finish
      And I press "Rich Text"
      And I wait for AJAX to finish
     Then I should see "Components"
     When I fill in the rich text editor field "Text" with "Rich Text test"
      And I expand the field "styling-settings"
      And I wait for AJAX to finish
      And I press the "Select an image" button
      And I wait for AJAX to finish
     Then the image media browser should be open
     When I switch to iframe "entity_browser_iframe_image_browser"
      And I fill in "Mars panorama" for "Search keywords"
      And I press the "Search" button
      And I wait for AJAX to finish
     Then I should see image with the "Mars panorama image" title text
     When I click on the image with the "Mars panorama image" title text
      And I press the "Select an image" button
      And I wait
      And I switch to main frame
      And I wait
      And I press "Save"
      And I wait
     Then I should see "Landing page Test Landing page Rich Text has been created"
      And I should see "Rich Text test"

  @javascript @local @development @staging @production
  Scenario: Check if a user with a permission to manage "Landing page" content type can add paragraphs of type "Tabs"
    Given I am a logged in user with the "test_site_admin" user
     When I go to "node/add/landing_page"
      And I wait
      And I fill in "Test Landing page Tabs" for "Title"
      And I fill in "Test Landing page description Tabs" for "Page description"
      And I wait for AJAX to finish
      And I press "Add Component"
      And I wait for AJAX to finish
      And I press "Tabs"
      And I wait for AJAX to finish
      And I expand the field "styling-settings"
      And I press the "Select an image" button
      And I wait for AJAX to finish
     Then the image media browser should be open
     When I switch to iframe "entity_browser_iframe_image_browser"
      And I fill in "Mars panorama" for "Search keywords"
      And I press the "Search" button
      And I wait for AJAX to finish
     Then I should see image with the "Mars panorama image" title text
     When I click on the image with the "Mars panorama image" title text
      And I press the "Select an image" button
      And I wait
      And I switch to main frame
      And I wait
     Then I should see "Components"
     When I fill in "Tab 1" for "Tab name"
      And I press "Add Component"
      And I press "field_lp_paragraphs_0_subform_bp_tab_section_0_subform_bp_tab_section_body_bp_simple_add_more"
      And I wait
     Then I should see "Tab body"
      And I fill in the rich text editor field "Text" with "Tab 1 - Body test"
     When I press "Save"
      And I wait
     Then I should see "Landing page Test Landing page Tabs has been created"
      And I should see "Tab 1"
      And I should see "Tab 1 - Body test"

  @javascript @local @development @staging @production
  Scenario: Check if a user with a permission to manage "Landing page" content type can add paragraphs of type "WebForm"
    Given I am a logged in user with the "test_site_admin" user
     When I go to "node/add/landing_page"
      And I wait
      And I fill in "Test Landing page WebForm" for "Title"
      And I fill in "Test Landing page description WebForm" for "Page description"
      And I wait for AJAX to finish
      And I press "Add Component"
      And I wait for AJAX to finish
      And I press "Webform"
      And I wait for AJAX to finish
     Then I should see "Components"
     When I select "Contact" from "Webform"
      And I wait
     When I press "Save"
      And I wait
     Then I should see "Landing page Test Landing page WebForm has been created"
