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
      And I select "published" from "edit-moderation-state-0-state"
      And I press the "Save" button
      And I wait
     Then I should see "Landing page (Layout Builder) Full Width - No Background Color - Text only has been created"
      And I should see "This layout builder tool allows you to configure the layout of the main content area."
     When I click "Add section"
      And I wait for AJAX to finish
     Then I should see "Choose a layout for this section"
      And I should see "One column"
      And I should see "Two column"
      And I should see "Three column"
      And I should see "Four column"
