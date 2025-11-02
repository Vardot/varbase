Feature: Content Management - Cloning content and entities
      As a logged in user with a permission to mange entities
      I want to be able to clone an entity.

  @javascript @local @development
  Scenario: Check if a user with a permission can clone a Landing page (Layout Builder)
    Given I am a logged in user with the "Site admin" user
     When I go to "/node/add/landing_page_lb"
      And wait
     Then I should see "Create Landing page"
     When I fill in "Test Landing page" for "Title"
      And I fill in "Test Landing page description" for "Page description"
      And I select "published" from "edit-moderation-state-0-state--2"
      And I press the "Save as" button
      And wait
     Then I should see "Edit layout for Test Landing page"
     When I scroll to the bottom of the page
      And I wait 2s
     Then I should see "Add section at end of layout"
     When I add a basic section at the end of layout
      And I save the section
      And I wait for AJAX to finish
      And I wait 2s
     Then I should see "Add block in Section 2, Col 1 region"

     When I click "Add block in Section 2, Col 1 region"
      And I wait for AJAX to finish
     Then I should see "Create content block"
     When I click "Create content block"
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
      And I wait 3s
      And I press the "Save layout" button
      And wait
     Then I should see "The layout override has been saved."
      And I should see "Test Landing page"
      And I should see "Rich text in 1 col section"

     When I go to "/admin/content"
      And wait
     Then I should see "Content"
     When I fill in "Test Landing page" for "Title"
      And I press the "Filter" button
      And wait 3s
     Then I should see "Test Landing page"
     When I fill in "Test Landing page" for "Title"
      And I press the "Filter" button
      And wait 3s
     Then I should see "Test Landing page"
     When I click "Edit" in the "Test Landing page" row
      And wait
     Then I should see "Test Landing page"
     When I open the top bar page actions menu
     Then I should see "clone"
     When I click "Clone"
      And wait
     Then I should see "Do you want to clone the Content entity named Test Landing page"
     When I press "gin-sticky-edit-clone"
      And wait
     Then I should see "Test Landing page - Cloned"

  @javascript @local @development
  Scenario: Check if a user with a permission deleted a cloned entity the original will not affected
    Given I am a logged in user with the "Super admin" user
     When I go to "/admin/content"
      And wait
     Then I should see "Content"
     When I fill in "Test Landing page - Cloned" for "Title"
      And I press the "Filter" button
      And wait 3s
     Then I should see "Test Landing page - Cloned"
      And I check the box "edit-views-bulk-operations-bulk-form-0"
      And I select "Delete selected entities" from "Action"
      And I press "Apply to selected items"
      And I wait for 5s
     Then I should see "Delete content item entities (1)"
     When I go to "/admin/content"
      And wait
     Then I should see "Content"
     When I fill in "Test Landing page - Cloned" for "Title"
      And I press the "Filter" button
      And wait
     Then I should not see "Test Landing page - Cloned"
     When I fill in "Test Landing page" for "Title"
      And I press the "Filter" button
      And wait 3s
     Then I should see "Test Landing page"
     When I click "Test Landing page"
      And wait
     Then I should see "Test Landing page"