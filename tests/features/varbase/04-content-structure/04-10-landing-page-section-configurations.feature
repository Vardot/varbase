Feature: Demo for newly added step definitions 
As a site admin, I will create a new landing page, add a section with different section settings/configurations

@javascript @local @development
  Scenario: Check if a site admin can create a landing page and add sections to it with different container types
    Given I am a logged in user with the "Site admin" user
     When I go to "/node/add/landing_page_lb"
      And I wait
     Then I should see "Create Landing page (Layout Builder)"
     When I fill in "Test Landing page (Layout Builder) by Site Admin" for "Title"
      And I fill in "Test Landing page (Layout Builder) description" for "Page description"
      And I select "published" from "Save as"
      And I press the "Save" button
      And I wait
     Then I should see "Landing page (Layout Builder) Test Landing page (Layout Builder) by Site Admin has been created"
      And I should see "This layout builder tool allows you to configure the layout of the main content area."
     When I scroll to the bottom of the page
      And I wait 1s
     Then I should see "Add section at end of layout"

     When I add a basic "2 Cols" section at the end of layout
      And I select the "Boxed" container type with a "Tiny" width
      And I select the "md" "33% 67%" section breakpoint
      And I add section gutters
     Then I should not see "Keep gutters between columns"

      And I wait for AJAX to finish
      And I select the "Primary" section background color
      And I uncheck the Edge to Edge Background
      And I select the "White" section text color
      And I set the alignment to "End"
      And I save the section
      And I wait for AJAX to finish
     Then I should see "Add block in Section 2, Col 1 region"

     When I scroll to the bottom of the page
      And I wait 2s
     Then I should see "Add section at end of layout"

     When I click "Add block in Section 2, Col 1 region"
      And I wait for AJAX to finish
      And I click "Create custom block"
      And I wait for AJAX to finish
      And I click "Rich text"
      And I wait for AJAX to finish
      And I check the box "Display title"
      And I fill in "Test Rich text in 2 cols section, col 1" for "Title"
      And I fill in the rich text editor field "Body" with "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer aliquet diam nunc, ac dictum velit tincidunt quis. Integer ut imperdiet dui, sit amet tempus est. Curabitur molestie sem non purus dignissim pulvinar. Pellentesque id sapien consequat"
      And I press the "Add block" button
     Then I should see "Test Rich text in 2 cols section, col 1"

     When I click "Add block in Section 2, Col 2 region"
      And I wait for AJAX to finish
      And I click "Create custom block"
      And I wait for AJAX to finish
      And I click "Rich text"
      And I wait for AJAX to finish
      And I check the box "Display title"
      And I fill in "Test Rich text in 2 cols section, col 2" for "Title"
      And I fill in the rich text editor field "Body" with "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer aliquet diam nunc, ac dictum velit tincidunt quis. Integer ut imperdiet dui, sit amet tempus est. Curabitur molestie sem non purus dignissim pulvinar. Pellentesque id sapien consequat"
      And I press the "Add block" button
      And I wait for AJAX to finish 
     Then I should see "Test Rich text in 2 cols section, col 2" 

     When I scroll to the top of the page
     Then I should see "Save layout"
      And I press the "Save layout" button
      And I wait
      And I should see "Test Rich text in 2 cols section, col 1"
      And I should see "Test Rich text in 2 cols section, col 2"
