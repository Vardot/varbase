Feature: Demo for newly added step definitions 
As a site admin, I will create a new landing page, add a section with different section settings/configurations

@javascript @local @development
  Scenario: Check if a site admin can create a landing page and add sections to it with different container types
    Given I am a logged in user with the "Site admin" user
     When I go to "/node/add/landing_page_lb"
      And I wait
     Then I should see "Create Landing page (Layout Builder)"
     When I fill in "Automated landing page by site admin" for "Title"
      And I fill in "Test Landing page (Layout Builder) description" for "Page description"
      And I select "published" from "Save as"
      And I press the "Save" button
      And I wait
     Then I should see "Landing page (Layout Builder) Automated landing page by site admin has been created"
      And I should see "This layout builder tool allows you to configure the layout of the main content area."
      And I scroll to the bottom of the page
      And I wait 1s
     Then I click "Add section at end of layout"
      And I wait for AJAX to finish
  
     Then I click "Bootstrap 2 Cols"
      And I wait for AJAX to finish
     Then I select the "Boxed" container type
      And I wait for AJAX to finish
     Then I select the "Tiny" container width
     Then I select the "md" "33% 67%" breakpoint
      And I add gutters
     When I move to the styles tab
      And I wait for AJAX to finish
     Then I open the "Background" settings menu
      And I wait for AJAX to finish
     Then I select the "Primary" background color
     Then I uncheck the Edge to Edge Background
     When I open the "Typography" settings menu
      And I select the "White" text color
     Then I set the alignment to "End"
     Then I press the "Add section" button
      And I click "in Section 2, Col 1 region"
     Then I wait for AJAX to finish
     Then I click "Create custom block"
      And I wait for AJAX to finish
     When I click "Rich text"
      And I wait for AJAX to finish
     Then I check the box "Display title"
     Then I fill in "Test Rich text in 2 cols section, col 1" for "Title"
      And I fill in the rich text editor field "Body" with "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer aliquet diam nunc, ac dictum velit tincidunt quis. Integer ut imperdiet dui, sit amet tempus est. Curabitur molestie sem non purus dignissim pulvinar. Pellentesque id sapien consequat"
      And I press the "Add block" button
  
     When I click "in Section 2, Col 2 region"
      And I wait for AJAX to finish
     Then I click "Create custom block"
      And I wait for AJAX to finish
     When I click "Rich text"
      And I wait for AJAX to finish
     Then I check the box "Display title"
     Then I fill in "Test Rich text in 2 cols section, col 2" for "Title"
      And I fill in the rich text editor field "Body" with "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer aliquet diam nunc, ac dictum velit tincidunt quis. Integer ut imperdiet dui, sit amet tempus est. Curabitur molestie sem non purus dignissim pulvinar. Pellentesque id sapien consequat"
     Then I press the "Add block" button
      And I wait for AJAX to finish  
  
     When I scroll to the top of the page
     Then I should see "Save layout"
      And I press the "Save layout" button
  
