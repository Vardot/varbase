Feature: Landing (Layout Builder) Pages - Check to add sections and choose layouts for sections
      As a logged in user with a permission to mange Landing (Layout Builder) pages
      I want to be able to add sections with any layouts to the page
      So that the "Landing (Layout Builder) page" will show up having the listed section with their content

  @javascript @local @development @staging @production
  Scenario: Check if a user with a permission to manage Landing page (Layout Builder) content type can add sections with any layouts to the page
    Given I am a logged in user with the "Site admin" user
     When I go to "/node/add/landing_page_lb"
      And wait
     Then I should see "Create Landing page (Layout Builder)"
     When I fill in "Test Landing page (Layout Builder)" for "Title"
      And I fill in "Test Landing page (Layout Builder) description" for "Page description"
      And I select "published" from "Save as"
      And I press the "Save" button
      And wait
     Then I should see "Landing page (Layout Builder) Test Landing page (Layout Builder) has been created"
      And I should see "This layout builder tool allows you to configure the layout of the main content area."
     When I scroll to the bottom of the page
      And wait 2s
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
     When I scroll to the top of the page
      And wait 2s
      And I press "Save layout"
      And wait
      And wait 2s
     Then I should see "The layout override has been saved."
      And I should see "Test Landing page (Layout Builder)"
