Feature: Content Management - Cloning content and entities
As a logged in user with a permission to mange entities
I want to be able to clone an entity.

@javascript @local @development
  Scenario: Check if a user with a permission can clone a Landing page (Paragraphs)
    Given I am a logged in user with the "Site admin" user
     When I go to "/node/add/landing_page"
      And I wait
      And I fill in "Test Clone landing page" for "Title"
      And I fill in "Test landing page description text" for "Page description"
      And I wait for AJAX to finish
      And I wait for 1 second
      And I press "+ Add"
      And I wait for AJAX to finish
      And I wait for 1 second
      And I select the "bp_block" paragraph component
      And I wait for AJAX to finish
     Then I should see "Block"
     When I select "Site branding" from "Block"
      And I wait
      And I select "published" from "edit-moderation-state-0-state"
      And I press the "Save" button
      And I wait
     Then I should see "Test Clone landing page has been created"

     When I go to "/admin/content"
      And I wait
     Then I should see "Content"
     When I fill in "Test Clone landing page" for "Title"
      And I press the "Filter" button
      And I wait
     Then I should see "Test Clone landing page"
     When I fill in "Test Clone landing page" for "Title"
      And I press the "Filter" button
      And I wait
     Then I should see "Test Clone landing page"
     When I click "Edit" in the "Test Clone landing page" row
      And I wait
     Then I should see "Clone"
     When I click "Clone"
      And I wait
     Then I should see "Clone Content"
     When I press "edit-clone"
      And I wait
     Then I should see "Test Clone landing page - Cloned"

  @javascript @local @development
  Scenario: Check if a user with a permission deleted a cloned entity the original will not affected
    Given I am a logged in user with the "Super admin" user
     When I go to "/admin/content"
      And I wait
     Then I should see "Content"
     When I fill in "Test Clone landing page - Cloned" for "Title"
      And I press the "Filter" button
      And I wait
     Then I should see "Test Clone landing page - Cloned"
      And I check the box "edit-views-bulk-operations-bulk-form-0"
      And I select "Delete selected entities" from "Action"
      And I press "Apply to selected items"
      And I wait
     Then I should see "Are you sure you wish to perform"
     When I press "Execute action"
      And I wait for 5s
     Then I should see "Action processing results: Delete entities (1)."
     When I go to "/admin/content"
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
     Then I should see "Test Clone landing page"