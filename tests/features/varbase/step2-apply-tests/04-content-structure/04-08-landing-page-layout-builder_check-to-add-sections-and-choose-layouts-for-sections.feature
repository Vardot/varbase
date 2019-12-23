Feature: Landing (Layout Builder) Pages - Check to add sections and choose layouts for sections
As a logged in user with a permission to mange Landing (Layout Builder) pages
I want to be able to add sections with any layouts to the page
So that the "Landing (Layout Builder) page" will show up having the listed section with their content

  @javascript @local @development @staging @production
  Scenario: Check if a user with a permission to manage Landing page (Layout Builder) content type can add sections with any layouts to the page
    Given I am a logged in user with the "test_site_admin" user
     When I go to "node/add/landing_page_lb"
      And I wait
     Then I should see "Create Landing page (Layout Builder)"
     When I fill in "Full Width - No Background Color - Text only" for "Title"
      And I fill in "Test Landing page (Layout Builder) description" for "Page description"
      And I press "Save"
      And I wait
     Then I should see "Landing page (Layout Builder) Full Width - No Background Color - Text only has been created"
      And I should see "Layout"
     When I click "Layout"
      And I wait
     Then I should see "Edit layout for Full Width - No Background Color - Text only"
#   Add Section 1 as one column
     When I click "Add section"
      And I wait for AJAX to finish
     Then I should see "Choose a layout for this section"
      And I should see "One column"
      And I should see "Two column"
      And I should see "Three column"
      And I should see "Four column"
     When I click "One column"
      And I wait for AJAX to finish
     Then I should see "Configure section"
      And I should see "Width"
      And I should see "Gutter"
      And I should see "Background color"
      And I should see "Background media"
      And I should see "Edge to Edge Background"
      And I should see "Classes"
      And I should see "Use advanced instead"
     When I press "Add section"
      And I wait for AJAX to finish
     Then I should see "Section 1"
      And I should see "Add block in Section 1, Content region"
#   Add Section 2 as Two column
      When I click "Add section"
       And I wait for AJAX to finish
      Then I should see "Choose a layout for this section"
       And I should see "One column"
       And I should see "Two column"
       And I should see "Three column"
       And I should see "Four column"
      When I click "Two column"
       And I wait for AJAX to finish
      Then I should see "Configure section"
       And I should see "Width"
       And I should see "Column Style 2"
       And I should see "Gutter"
       And I should see "Background color"
       And I should see "Background media"
       And I should see "Edge to Edge Background"
       And I should see "Classes"
       And I should see "Use advanced instead"
      When I press "Add section"
       And I wait for AJAX to finish
      Then I should see "Section 2"
       And I should see "Add block in Section 1, Left region"
       And I should see "Add block in Section 1, Right region"
#   Add Section 3 as Three column
      When I click "Add section"
       And I wait for AJAX to finish
      Then I should see "Choose a layout for this section"
       And I should see "One column"
       And I should see "Two column"
       And I should see "Three column"
       And I should see "Four column"
      When I click "Three column"
       And I wait for AJAX to finish
      Then I should see "Configure section"
       And I should see "Width"
       And I should see "Column Style 3"
       And I should see "Gutter"
       And I should see "Background color"
       And I should see "Background media"
       And I should see "Edge to Edge Background"
       And I should see "Classes"
       And I should see "Use advanced instead"
      When I press "Add section"
       And I wait for AJAX to finish
      Then I should see "Section 3"
       And I should see "Add block in Section 1, Left region"
       And I should see "Add block in Section 1, Middle region"
       And I should see "Add block in Section 1, Right region"
#    Add Section 3 as Three column
      When I click "Add section"
       And I wait for AJAX to finish
      Then I should see "Choose a layout for this section"
       And I should see "One column"
       And I should see "Two column"
       And I should see "Three column"
       And I should see "Four column"
      When I click "Four column"
       And I wait for AJAX to finish
      Then I should see "Configure section"
       And I should see "Width"
       And I should see "Gutter"
       And I should see "Background color"
       And I should see "Background media"
       And I should see "Edge to Edge Background"
       And I should see "Classes"
       And I should see "Use advanced instead"
      When I press "Add section"
       And I wait for AJAX to finish
      Then I should see "Section 4"
       And I should see "Add block in Section 1, First region"
       And I should see "Add block in Section 1, Second region"
       And I should see "Add block in Section 1, Third region"
       And I should see "Add block in Section 1, Fourth region"
