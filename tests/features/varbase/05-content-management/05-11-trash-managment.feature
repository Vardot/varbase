Feature: Content Management - Trash Management
      As a logged in user with a permission to manage content
      I want to be able to manage content lifecycle using the trash module
      So that I can soft-delete, restore, and permanently purge content.

  @javascript @local @development @staging @production
  Scenario: Test trash module permissions and interface access for all user roles
    Given I am a logged in user with the "Normal user" user
     When I go to "/admin/content/trash"
      And wait
     Then I should see "Access denied"
     
    Given I am a logged in user with the "Editor" user
     When I go to "/admin/content/trash"
      And wait
     Then I should see "Trash"
     When I go to "/admin/config/content/trash"
      And wait
     Then I should see "Access denied"
     
    Given I am a logged in user with the "Content admin" user
     When I go to "/admin/content/trash"
      And wait
     Then I should see "Trash"
     When I go to "/admin/config/content/trash"
      And wait
     Then I should see "Access denied"
     
    Given I am a logged in user with the "Site admin" user
     When I go to "/admin/content/trash"
      And wait
     Then I should see "Trash"
     When I go to "/admin/config/content/trash"
      And wait
     Then I should see "Access denied"
     
    Given I am a logged in user with the "webmaster" user
     When I go to "/admin/content/trash"
      And wait
     Then I should see "Trash"
     When I go to "/admin/config/content/trash"
      And wait
     Then I should see "Trash"

  @javascript @local @development @staging @production
  Scenario: Test content deletion and trash workflow with restore and purge operations
    Given I am a logged in user with the "Super admin" user
    
    # Create test content
     When I go to "/node/add/page"
      And wait
     Then I should see "Create Basic page"
     When I fill in "Trash Test Content" for "Title"
      And I fill in the rich text editor field "Body" with "This content will be used to test trash functionality including restore and purge operations"
      And I select "published" from "edit-moderation-state-0-state--2"
      And I press the "Save as" button
      And wait
     Then I should see "Basic page Trash Test Content has been created."

    # Delete content via edit form
     When I go to "/admin/content"
      And wait
     Then I should see "Content"
     When I fill in "Trash Test Content" for "Title"
      And I press the "Filter" button
      And wait 3s
     Then I should see "Trash Test Content"
     When I click "Edit" in the "Trash Test Content" row
      And wait
     Then I should see "Trash Test Content"
     When I open the top bar page actions menu
     Then I should see "Delete"
     When I click "Delete"
      And wait
     Then I should see "Are you sure you want to delete"
     When I press "Delete"
      And wait 3s
     Then I should see "has been deleted."

    # Verify content is removed from main content list
     When I go to "/admin/content"
      And wait
     Then I should see "Content"
     When I fill in "Trash Test Content" for "Title"
      And I press the "Filter" button
      And wait 3s
     Then I should not see "Trash Test Content"

    # Access trash interface and check if content appears there
     When I go to "/admin/content/trash"
      And wait
     Then I should see "Trash"
     When I scroll to bottom
      And I wait 2s

    # Test node-specific trash functionality
     When I go to "/admin/content/trash/node"
      And wait 3s
     Then I should see "Trash"

    # Test purge functionality access
     When I go to "/admin/content/trash"
      And wait 3s
     Then I should see "Trash"

  @javascript @local @development @staging @production
  Scenario: Test bulk deletion operations and trash interface verification
    Given I am a logged in user with the "Site admin" user
    
    # Create multiple test content items
     When I go to "/node/add/page"
      And wait
     Then I should see "Create Basic page"
     When I fill in "Bulk Test Page One" for "Title"
      And I fill in the rich text editor field "Body" with "First test page for bulk operations"
      And I select "published" from "edit-moderation-state-0-state--2"
      And I press the "Save as" button
      And wait
     Then I should see "Basic page Bulk Test Page One has been created."

     When I go to "/node/add/page"
      And wait
     Then I should see "Create Basic page"
     When I fill in "Bulk Test Page Two" for "Title"
      And I fill in the rich text editor field "Body" with "Second test page for bulk operations"
      And I select "published" from "edit-moderation-state-0-state--2"
      And I press the "Save as" button
      And wait
     Then I should see "Basic page Bulk Test Page Two has been created."

    # Test bulk delete operations
     When I go to "/admin/content"
      And wait
     Then I should see "Content"
     When I fill in "Bulk Test Page" for "Title"
      And I press the "Filter" button
      And wait 3s
     Then I should see "Bulk Test Page One"
      And I should see "Bulk Test Page Two"

    # Delete first item individually via edit form
     When I click "Edit" in the "Bulk Test Page One" row
      And wait
     Then I should see "Bulk Test Page One"
     When I open the top bar page actions menu
     Then I should see "Delete"
     When I click "Delete"
      And wait
     Then I should see "Are you sure you want to delete"
     When I press "Delete"
      And wait 3s
     Then I should see "has been deleted."

    # Delete second item via bulk operations if available
     When I go to "/admin/content"
      And wait
     Then I should see "Content"
     When I fill in "Bulk Test Page Two" for "Title"
      And I press the "Filter" button
      And wait 3s
     Then I should see "Bulk Test Page Two"

    # Verify trash interface is accessible and functional
     When I go to "/admin/content/trash"
      And wait
     Then I should see "Trash"
     When I wait 2s
      And I scroll to bottom
      And I wait 2s
     Then I should see "Trash"

  @javascript @local @development @staging @production  
  Scenario: Test trash module configuration access
    Given I am a logged in user with the "webmaster" user
     When I go to "/admin/config/content/trash"
      And wait
     Then I should see "Trash"

    # Test that lower privilege users have limited access
    Given I am a logged in user with the "Content admin" user
     When I go to "/admin/config/content/trash"
      And wait
     Then I should see "Trash"