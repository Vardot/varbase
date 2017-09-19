Feature: Content Management - Cloning content and entities.
As a logged in user with a permission to mange entities
I want to be able to clone an entity.

@javascript @local @development
  Scenario: Check if a user with a permission can clone a "landing page"
    Given I am a logged in user with the "test_site_admin" user
     When I go to "node/add/landing_page"
      And I wait
      And I fill in "Test Clone landing page" for "Title"
      And I fill in "Test landing page description text" for "Page description"
      And I wait for AJAX to finish
      And I scrolldown
      And I wait for AJAX to finish
      And I press "Add Component"
      And I wait for AJAX to finish
      And I press "Rich Text"
      And I wait for AJAX to finish
      And I should see "Components"
      And I fill in the rich text editor field "Text" with "Rich Text cloning test"
     When I press "Save"
     Then I should see "Rich Text cloning test"
     When I click "Clone"
      And I wait
      And I press "Clone"
      And I wait
     Then I should see "Test Clone landing page - Cloned" value in the "edit-title-0-value" input element
      And I press "Save"

  @javascript @local @development
  Scenario: Check if a user with a permission deleted a cloned entity the original will not affected
    Given I am a logged in user with the "test_super_admin" user
     When I go to "admin/content"
      And I wait
     Then I should see "Content"
     When I fill in "Test Clone landing page - Cloned" for "Title"
      And I press the "Filter" button
      And I wait
     Then I should see "Test Clone landing page - Cloned"
      And I check the box "edit-node-bulk-form-0"
      And I select "Delete content" from "With selection"
      And I press "Apply to selected items"
      And I press "Delete"
      And I wait
     Then I go to "admin/content"
      And I wait
     Then I should see "Content"
     When I fill in "Test Clone landing page - Cloned" for "Title"
      And I press the "Filter" button
      And I wait
     Then I should not see "Test Clone landing page - Cloned"
     When I fill in "Test Clone landing page" for "Title"
      And I press the "Filter" button
      And I wait
     Then I should see "Test Clone landing page"
     When I click "Test Clone landing page"
      And I wait
     Then I should see "Rich Text cloning test"
