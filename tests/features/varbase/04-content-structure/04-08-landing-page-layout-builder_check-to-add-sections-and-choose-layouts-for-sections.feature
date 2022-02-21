Feature: Landing (Layout Builder) Pages - Check to add sections and choose layouts for sections
As a logged in user with a permission to mange Landing (Layout Builder) pages
I want to be able to add sections with any layouts to the page
So that the "Landing (Layout Builder) page" will show up having the listed section with their content

@javascript @local @development @staging @production
  Scenario: Check if a user with a permission to manage Landing page (Layout Builder) content type can add sections with any layouts to the page
    Given I am a logged in user with the "Site admin" user
     When I go to "/node/add/landing_page_lb"
      And I wait
     Then I should see "Create Landing page (Layout Builder)"
     When I fill in "Test Landing page (Layout Builder)" for "Title"
      And I fill in "Test Landing page (Layout Builder) description" for "Page description"
      And I select "published" from "Save as"
      And I press the "Save" button
      And I wait
     Then I should see "Landing page (Layout Builder) Test Landing page (Layout Builder) has been created"
      And I should see "This layout builder tool allows you to configure the layout of the main content area."
     When I scroll to the bottom of the page
      And I wait 2s
     Then I should see "Add section at end of layout"
     When I click "Add section at end of layout"
      And I wait for AJAX to finish
     Then I should see "Choose a layout for this section"
      And I should see "Bootstrap 1 Col"
      And I should see "Bootstrap 2 Cols"
      And I should see "Bootstrap 3 Cols"
      And I should see "Bootstrap 4 Cols"
      And I should not see "Bootstrap 5 Cols"
      And I should see "Bootstrap 6 Cols"
      And I should not see "Bootstrap 7 Cols"
      And I should not see "Bootstrap 8 Cols"
      And I should not see "Bootstrap 9 Cols"
      And I should not see "Bootstrap 10 Cols"
      And I should not see "Bootstrap 11 Cols"
      And I should not see "Bootstrap 12 Cols"
      And I scroll to the top of the page
      And I wait 1s
     Then I should see "Save layout"
     When I press the "Save layout" button
      And I wait
     Then I should see "The layout override has been saved."
      And I should see "Test Landing page (Layout Builder)"
  
  @javascript @local @development
  Scenario: Check that Site admins can add a one coloumn section and add a Rich text block in the section
    Given I am a logged in user with the "Site admin" user
     When I go to "/admin/content"
      And I wait
     Then I should see "Content"
     When I fill in "Test Landing page (Layout Builder)" for "Title"
      And I press the "Filter" button
      And I wait
     Then I should see "Test Landing page (Layout Builder)"
     When I click "Test Landing page (Layout Builder)"
      And I wait 
     Then I should see "Test Landing page (Layout Builder)"
     When I click "Tasks"
      And I wait for AJAX to finish
      And I should see "Layout"
     When I click "Layout"
      And I wait
     Then I should see "This layout builder tool allows you to configure the layout of the main content area."
     When I scroll to the bottom of the page
      And I wait 2s
     Then I should see "Add section at end of layout"
     When I add a basic section at the end of layout
      And I save the section
      And I wait for AJAX to finish
     Then I should see "Add block in Section 2, Col 1 region"

     When I click "Add block in Section 2, Col 1 region"
      And I wait for AJAX to finish
     Then I should see "Create custom block"
     When I click "Create custom block"
      And I wait for AJAX to finish
     Then I should see "Rich text"
     When I click "Rich text"
      And I wait for AJAX to finish
     Then I should see "Configure block"
     When I check the box "Display title"
      And I fill in "Rich text in 1 col section" for "Title"
      And I fill in the rich text editor field "Body" with "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean lacinia sapien quis tempor placerat. Nulla faucibus rhoncus est, vel malesuada nisl pulvinar ut. Sed vulputate est nec dui finibus, tempus lobortis quam mattis. Fusce facilisis ut nunc ut scelerisque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed aliquet purus vitae augue lobortis accumsan ut nec nulla. Cras nisi mauris, gravida ac"
      And I press the "Add block" button
      And I wait for AJAX to finish
     Then I should see "Rich text in 1 col section"

     When I scroll to the top of the page
      And I wait 2s
     Then I should see "Save layout"
     When I press the "Save layout" button
      And I wait
     Then I should see "The layout override has been saved."
      And I should see "Test Landing page (Layout Builder)"
      And I should see "Rich text in 1 col section"

  @javascript @local @development
  Scenario: Check that Site admins can add a two coloumns section and add a Rich text blocks in each coloumns
    Given I am a logged in user with the "Site admin" user
     When I go to "/admin/content"
      And I wait
     Then I should see "Content"
     When I fill in "Test Landing page (Layout Builder)" for "Title"
      And I press the "Filter" button
      And I wait
     Then I should see "Test Landing page (Layout Builder)"
     When I click "Test Landing page (Layout Builder)"
      And I wait 
     Then I should see "Test Landing page (Layout Builder)"
     When I click "Tasks"
      And I wait for AJAX to finish
      And I should see "Layout"
     When I click "Layout"
      And I wait
     Then I should see "This layout builder tool allows you to configure the layout of the main content area."
     When I scroll to the bottom of the page
      And I wait 2s
     Then I should see "Add section at end of layout"
     When I add a basic "2 Cols" section at the end of layout
      And I wait for AJAX to finish
      And I save the section
      And I wait for AJAX to finish
     Then I should see "Add block in Section 3, Col 1 region"
      And I should see "Add block in Section 3, Col 2 region"

     When I click "Add block in Section 3, Col 1 region"
      And I wait for AJAX to finish
     Then I should see "Create custom block"
     When I click "Create custom block"
      And I wait for AJAX to finish
     Then I should see "Rich text"
     When I click "Rich text"
      And I wait for AJAX to finish
     Then I should see "Configure block"
     When I check the box "Display title"
      And I fill in "Rich text in 2 cols section, col 1" for "Title"
      And I fill in the rich text editor field "Body" with "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean lacinia sapien quis tempor placerat. Nulla faucibus rhoncus est, vel malesuada nisl pulvinar ut. Sed vulputate est nec dui finibus, tempus lobortis quam mattis. Fusce facilisis ut nunc ut scelerisque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed aliquet purus vitae augue lobortis accumsan ut nec nulla. Cras nisi mauris, gravida ac"
      And I press the "Add block" button
      And I wait for AJAX to finish
     Then I should see "Rich text in 2 cols section, col 1"
  
     When I click "Add block in Section 3, Col 2 region"
      And I wait for AJAX to finish
     Then I should see "Create custom block"
     When I click "Create custom block"
      And I wait for AJAX to finish
     Then I should see "Rich text"
     When I click "Rich text"
      And I wait for AJAX to finish
     Then I should see "Configure block"
     When I check the box "Display title"
      And I fill in "Rich text in 2 cols section, col 2" for "Title"
      And I fill in the rich text editor field "Body" with "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean lacinia sapien quis tempor placerat. Nulla faucibus rhoncus est, vel malesuada nisl pulvinar ut. Sed vulputate est nec dui finibus, tempus lobortis quam mattis. Fusce facilisis ut nunc ut scelerisque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed aliquet purus vitae augue lobortis accumsan ut nec nulla. Cras nisi mauris, gravida ac"
      And I press the "Add block" button
      And I wait for AJAX to finish
     Then I should see "Rich text in 2 cols section, col 2"
  
     When I scroll to the top of the page
      And I wait 2s
     Then I should see "Save layout"
     When I press the "Save layout" button
      And I wait
     Then I should see "The layout override has been saved."
      And I should see "Test Landing page (Layout Builder)"
      And I should see "Rich text in 2 cols section, col 1"
      And I should see "Rich text in 2 cols section, col 2"
  
  @javascript @local @development
  Scenario: Check that Site admins can add a three coloumns section and add a Rich text blocks in each coloumns
    Given I am a logged in user with the "Site admin" user
     When I go to "/admin/content"
      And I wait
     Then I should see "Content"
     When I fill in "Test Landing page (Layout Builder)" for "Title"
      And I press the "Filter" button
      And I wait
     Then I should see "Test Landing page (Layout Builder)"
     When I click "Test Landing page (Layout Builder)"
      And I wait 
     Then I should see "Test Landing page (Layout Builder)"
     When I click "Tasks"
      And I wait for AJAX to finish
      And I should see "Layout"
     When I click "Layout"
      And I wait
     Then I should see "This layout builder tool allows you to configure the layout of the main content area."
     When I scroll to the bottom of the page
      And I wait 2s
     Then I should see "Add section at end of layout"
     When I add a basic "3 Cols" section at the end of layout
      And I save the section
      And I wait for AJAX to finish
     Then I should see "Add block in Section 4, Col 1 region"
      And I should see "Add block in Section 4, Col 2 region"
      And I should see "Add block in Section 4, Col 3 region"

     When I click "Add block in Section 4, Col 1 region"
      And I wait for AJAX to finish
     Then I should see "Create custom block"
     When I click "Create custom block"
      And I wait for AJAX to finish
     Then I should see "Rich text"
     When I click "Rich text"
      And I wait for AJAX to finish
     Then I should see "Configure block"
     When I check the box "Display title"
      And I fill in "Rich text in 3 cols section, col 1" for "Title"
      And I fill in the rich text editor field "Body" with "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean lacinia sapien quis tempor placerat. Nulla faucibus rhoncus est, vel malesuada nisl pulvinar ut. Sed vulputate est nec dui finibus, tempus lobortis quam mattis. Fusce facilisis ut nunc ut scelerisque."
      And I press the "Add block" button
      And I wait for AJAX to finish
     Then I should see "Rich text in 3 cols section, col 1"

     Then I click "Add block in Section 4, Col 2 region"
      And I wait for AJAX to finish
     Then I should see "Create custom block"
     When I click "Create custom block"
      And I wait for AJAX to finish
     Then I should see "Rich text"
     When I click "Rich text"
      And I wait for AJAX to finish
     Then I should see "Configure block"
     When I check the box "Display title"
      And I fill in "Rich text in 3 cols section, col 2" for "Title"
      And I fill in the rich text editor field "Body" with "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean lacinia sapien quis tempor placerat. Nulla faucibus rhoncus est, vel malesuada nisl pulvinar ut. Sed vulputate est nec dui finibus, tempus lobortis quam mattis. Fusce facilisis ut nunc ut scelerisque."
      And I press the "Add block" button
      And I wait for AJAX to finish
     Then I should see "Rich text in 3 cols section, col 2"
  
     Then I click "Add block in Section 4, Col 3 region"
      And I wait for AJAX to finish
     Then I should see "Create custom block"
     When I click "Create custom block"
      And I wait for AJAX to finish
     Then I should see "Rich text"
     When I click "Rich text"
      And I wait for AJAX to finish
     Then I should see "Configure block"
     When I check the box "Display title"
      And I fill in "Rich text in 3 cols section, col 3" for "Title"
      And I fill in the rich text editor field "Body" with "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean lacinia sapien quis tempor placerat. Nulla faucibus rhoncus est, vel malesuada nisl pulvinar ut. Sed vulputate est nec dui finibus, tempus lobortis quam mattis. Fusce facilisis ut nunc ut scelerisque."
      And I press the "Add block" button
      And I wait for AJAX to finish
     Then I should see "Rich text in 3 cols section, col 3"
  
     When I scroll to the top of the page
      And I wait 2s
     Then I should see "Save layout"
     When I press the "Save layout" button
      And I wait
     Then I should see "The layout override has been saved."
      And I should see "Test Landing page (Layout Builder)"
      And I should see "Rich text in 3 cols section, col 1"
      And I should see "Rich text in 3 cols section, col 2"
      And I should see "Rich text in 3 cols section, col 3"

  @javascript @local @development
  Scenario: Check that Site admins can add a foure coloumns section and add a Rich text blocks in each coloumns
    Given I am a logged in user with the "Site admin" user
     When I go to "/admin/content"
      And I wait
     Then I should see "Content"
     When I fill in "Test Landing page (Layout Builder)" for "Title"
      And I press the "Filter" button
      And I wait
     Then I should see "Test Landing page (Layout Builder)"
     When I click "Test Landing page (Layout Builder)"
      And I wait 
     Then I should see "Test Landing page (Layout Builder)"
     When I click "Tasks"
      And I wait for AJAX to finish
     Then I should see "Layout"
     When I click "Layout"
      And I wait
     Then I should see "This layout builder tool allows you to configure the layout of the main content area."
     When I scroll to the bottom of the page
      And I wait 2s
     Then I should see "Add section at end of layout"
     When I add a basic "4 Cols" section at the end of layout
      And I save the section
      And I wait for AJAX to finish
     Then I should see "Add block in Section 5, Col 1 region"
      And I should see "Add block in Section 5, Col 2 region"
      And I should see "Add block in Section 5, Col 3 region"
      And I should see "Add block in Section 5, Col 4 region"

     When I click "Add block in Section 5, Col 1 region"
      And I wait for AJAX to finish
     Then I should see "Create custom block"
     When I click "Create custom block"
      And I wait for AJAX to finish
     Then I should see "Rich text"
     When I click "Rich text"
      And I wait for AJAX to finish
     Then I should see "Configure block"
     When I check the box "Display title"
     Then I fill in "Rich text in 4 cols section, col 1" for "Title"
      And I fill in the rich text editor field "Body" with "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean lacinia sapien quis tempor placerat. Nulla faucibus rhoncus est, vel malesuada nisl pulvinar ut. Sed vulputate est nec dui finibus, tempus lobortis quam mattis. Fusce facilisis ut nunc ut scelerisque."
      And I press the "Add block" button
      And I wait for AJAX to finish
     Then I should see "Rich text in 4 cols section, col 1"

     When I click "Add block in Section 5, Col 2 region"
      And I wait for AJAX to finish
     Then I should see "Create custom block"
     When I click "Create custom block"
      And I wait for AJAX to finish
     Then I should see "Rich text"
     When I click "Rich text"
      And I wait for AJAX to finish
     Then I should see "Configure block"
     When I check the box "Display title"
      And I fill in "Rich text in 4 cols section, col 2" for "Title"
      And I fill in the rich text editor field "Body" with "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean lacinia sapien quis tempor placerat. Nulla faucibus rhoncus est, vel malesuada nisl pulvinar ut. Sed vulputate est nec dui finibus, tempus lobortis quam mattis. Fusce facilisis ut nunc ut scelerisque."
      And I press the "Add block" button
      And I wait for AJAX to finish
     Then I should see "Rich text in 4 cols section, col 2"
  
     Then I click "Add block in Section 5, Col 3 region"
      And I wait for AJAX to finish
     Then I should see "Create custom block"
     When I click "Create custom block"
      And I wait for AJAX to finish
     Then I should see "Rich text"
     When I click "Rich text"
      And I wait for AJAX to finish
     Then I should see "Configure block"
     When I check the box "Display title"
      And I fill in "Rich text in 4 cols section, col 3" for "Title"
      And I fill in the rich text editor field "Body" with "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean lacinia sapien quis tempor placerat. Nulla faucibus rhoncus est, vel malesuada nisl pulvinar ut. Sed vulputate est nec dui finibus, tempus lobortis quam mattis. Fusce facilisis ut nunc ut scelerisque."
      And I press the "Add block" button
      And I wait for AJAX to finish
     Then I should see "Rich text in 4 cols section, col 3"
  
     Then I click "Add block in Section 5, Col 4 region"
      And I wait for AJAX to finish
     Then I should see "Create custom block"
     When I click "Create custom block"
      And I wait for AJAX to finish
     Then I should see "Rich text"
     When I click "Rich text"
      And I wait for AJAX to finish
     Then I should see "Configure block"
     When I check the box "Display title"
      And I fill in "Rich text in 4 cols section, col 4" for "Title"
      And I fill in the rich text editor field "Body" with "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean lacinia sapien quis tempor placerat. Nulla faucibus rhoncus est, vel malesuada nisl pulvinar ut. Sed vulputate est nec dui finibus, tempus lobortis quam mattis. Fusce facilisis ut nunc ut scelerisque."
      And I press the "Add block" button
      And I wait for AJAX to finish
     Then I should see "Rich text in 4 cols section, col 4" 

     When I scroll to the top of the page
      And I wait 2s
     Then I should see "Save layout"
     When I press the "Save layout" button
      And I wait
     Then I should see "The layout override has been saved."
      And I should see "Test Landing page (Layout Builder)"
      And I should see "Rich text in 4 cols section, col 1"
      And I should see "Rich text in 4 cols section, col 2"
      And I should see "Rich text in 4 cols section, col 3"
      And I should see "Rich text in 4 cols section, col 4"

  @javascript @local @development
  Scenario: Check that Site admins can add a six coloumns section and add a Rich text blocks in each coloumns
    Given I am a logged in user with the "Site admin" user
     When I go to "/admin/content"
      And I wait
     Then I should see "Content"
     When I fill in "Test Landing page (Layout Builder)" for "Title"
      And I press the "Filter" button
      And I wait
     Then I should see "Test Landing page (Layout Builder)"
     When I click "Test Landing page (Layout Builder)"
      And I wait 
     Then I should see "Test Landing page (Layout Builder)"
     When I click "Tasks"
      And I wait for AJAX to finish
      And I should see "Layout"
     When I click "Layout"
      And I wait
     Then I should see "This layout builder tool allows you to configure the layout of the main content area."
     When I scroll to the bottom of the page
      And I wait 2s
     Then I should see "Add section at end of layout"
     When I add a basic "6 Cols" section at the end of layout
      And I save the section 
      And I wait for AJAX to finish
     Then I should see "Add block in Section 6, Col 1 region"
      And I should see "Add block in Section 6, Col 2 region"
      And I should see "Add block in Section 6, Col 3 region"
      And I should see "Add block in Section 6, Col 5 region"
      And I should see "Add block in Section 6, Col 6 region"


     When I click "Add block in Section 6, Col 1 region"
      And I wait for AJAX to finish
     Then I should see "Create custom block"
     When I click "Create custom block"
      And I wait for AJAX to finish
     Then I should see "Rich text"
     When I click "Rich text"
      And I wait for AJAX to finish
     Then I should see "Configure block"
     When I check the box "Display title"
      And I fill in "Rich text in 6 cols section, col 1" for "Title"
      And I fill in the rich text editor field "Body" with "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean lacinia sapien quis tempor placerat. Nulla faucibus rhoncus est"
      And I press the "Add block" button
      And I wait for AJAX to finish
     Then I should see "Rich text in 6 cols section, col 1"

     Then I click "Add block in Section 6, Col 2 region"
      And I wait for AJAX to finish
     Then I should see "Create custom block"
     When I click "Create custom block"
      And I wait for AJAX to finish
     Then I should see "Rich text"
     When I click "Rich text"
      And I wait for AJAX to finish
     Then I should see "Configure block"
     When I check the box "Display title"
      And I fill in "Rich text in 6 cols section, col 2" for "Title"
      And I fill in the rich text editor field "Body" with "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean lacinia sapien quis tempor placerat. Nulla faucibus rhoncus est"
      And I press the "Add block" button
      And I wait for AJAX to finish
     Then I should see "Rich text in 6 cols section, col 2"

     Then I click "Add block in Section 6, Col 3 region"
      And I wait for AJAX to finish
     Then I should see "Create custom block"
     When I click "Create custom block"
      And I wait for AJAX to finish
     Then I should see "Rich text"
     When I click "Rich text"
      And I wait for AJAX to finish
     Then I should see "Configure block"
     When I check the box "Display title"
      And I fill in "Rich text in 6 cols section, col 3" for "Title"
      And I fill in the rich text editor field "Body" with "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean lacinia sapien quis tempor placerat. Nulla faucibus rhoncus est"
      And I press the "Add block" button
      And I wait for AJAX to finish
     Then I should see "Rich text in 6 cols section, col 3"
  
     Then I click "Add block in Section 6, Col 4 region"
      And I wait for AJAX to finish
     Then I should see "Create custom block"
     When I click "Create custom block"
      And I wait for AJAX to finish
     Then I should see "Rich text"
     When I click "Rich text"
      And I wait for AJAX to finish
     Then I should see "Configure block"
     When I check the box "Display title"
      And I fill in "Rich text in 6 cols section, col 4" for "Title"
      And I fill in the rich text editor field "Body" with "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean lacinia sapien quis tempor placerat. Nulla faucibus rhoncus est"
      And I press the "Add block" button
      And I wait for AJAX to finish
     Then I should see "Rich text in 6 cols section, col 4"
  
     Then I click "Add block in Section 6, Col 5 region"
      And I wait for AJAX to finish
     Then I should see "Create custom block"
     When I click "Create custom block"
      And I wait for AJAX to finish
     Then I should see "Rich text"
     When I click "Rich text"
      And I wait for AJAX to finish
     Then I should see "Configure block"
     When I check the box "Display title"
      And I fill in "Rich text in 6 cols section, col 5" for "Title"
      And I fill in the rich text editor field "Body" with "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean lacinia sapien quis tempor placerat. Nulla faucibus rhoncus est"
      And I press the "Add block" button
      And I wait for AJAX to finish
     Then I should see "Rich text in 6 cols section, col 5"
  
     When I click "Add block in Section 6, Col 6 region"
      And I wait for AJAX to finish
     Then I should see "Create custom block"
     When I click "Create custom block"
      And I wait for AJAX to finish
     Then I should see "Rich text"
     When I click "Rich text"
      And I wait for AJAX to finish
     Then I should see "Configure block"
     When I check the box "Display title"
      And I fill in "Rich text in 6 cols section, col 6" for "Title"
      And I fill in the rich text editor field "Body" with "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean lacinia sapien quis tempor placerat. Nulla faucibus rhoncus est"
      And I press the "Add block" button
      And I wait for AJAX to finish
     Then I should see "Rich text in 6 cols section, col 6"

     When I scroll to the top of the page
      And I wait 2s
     Then I should see "Save layout"
     When I press the "Save layout" button
      And I wait
     Then I should see "The layout override has been saved."
      And I should see "Rich text in 6 cols section, col 1"
      And I should see "Rich text in 6 cols section, col 2"
      And I should see "Rich text in 6 cols section, col 3"
      And I should see "Rich text in 6 cols section, col 4"
      And I should see "Rich text in 6 cols section, col 5"
      And I should see "Rich text in 6 cols section, col 6"

