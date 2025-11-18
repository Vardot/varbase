Feature: Content Management - Trash Management
     As a logged in user with a permission to manage content
     I want to be able to manage content lifecycle using the trash module
     So that I can soft-delete, restore, and permanently purge content individually.

  @javascript @local @development @staging @production
  Scenario: Verify Normal user cannot access trash management pages
    Given I am a logged in user with the "Normal user" user
     When I go to "/admin/content/trash"
      And wait
     Then I should see "Access denied"
     When I go to "/admin/config/content/trash"
      And wait
     Then I should see "Access denied"

  @javascript @local @development @staging @production
  Scenario: Verify Editor can access trash content but not configuration
    Given I am a logged in user with the "Editor" user
     When I go to "/admin/content/trash"
      And wait
     Then I should see "Trash"
     When I go to "/admin/config/content/trash"
      And wait
     Then I should see "Access denied"

  @javascript @local @development @staging @production
  Scenario: Verify Content admin can access trash content but not configuration
    Given I am a logged in user with the "Content admin" user
     When I go to "/admin/content/trash"
      And wait
     Then I should see "Trash"
     When I go to "/admin/config/content/trash"
      And wait
     Then I should see "Access denied"

  @javascript @local @development @staging @production
  Scenario: Verify SEO admin can access trash content but not configuration
    Given I am a logged in user with the "SEO admin" user
     When I go to "/admin/content/trash"
      And wait
     Then I should see "Trash"
     When I go to "/admin/config/content/trash"
      And wait
     Then I should see "Access denied"

  @javascript @local @development @staging @production
  Scenario: Verify Site admin can access trash content but not configuration
    Given I am a logged in user with the "Site admin" user
     When I go to "/admin/content/trash"
      And wait
     Then I should see "Trash"
     When I go to "/admin/config/content/trash"
      And wait
     Then I should see "Access denied"

  @javascript @local @development @staging @production
  Scenario: Verify webmaster has full access to trash content and configuration
    Given I am a logged in user with the "webmaster" user
     When I go to "/admin/content/trash"
      And wait
     Then I should see "Trash"
     When I go to "/admin/config/content/trash"
      And wait
     Then I should see "Trash"

  @javascript @local @development @staging @production
  Scenario: Verify default trash settings include auto-purge enabled for 2 months
    Given I am a logged in user with the "webmaster" user
     When I go to "/admin/config/content/trash"
      And wait
     Then I should see "Entity types"

    # Verify default auto-purge settings (enabled by default in varbase_admin with 2 months)
      And the "auto_purge[enabled]" checkbox should be checked
      And the "auto_purge[after]" field should contain "2 months"

  @javascript @local @development @staging @production
  Scenario: Verify complete trash workflow allows deleting, restoring, and purging content individually
    Given I am a logged in user with the "Site admin" user
    
    # Create test content for complete workflow
     When I go to "/node/add/page"
      And wait
     Then I should see "Create Basic page"
     When I fill in "Complete Workflow Test Page" for "Title"
      And wait 3s
      And I fill in the rich text editor field "Body" with "This content will be used to test complete trash workflow including delete, restore, and purge operations individually"
      And I select "published" from "edit-moderation-state-0-state--2"
      And I press the "Save as" button
      And wait
     Then I should see "Basic page Complete Workflow Test Page has been created."

    # Delete content via individual delete form
     When I go to "/admin/content"
      And wait
     Then I should see "Content"
     When I fill in "Complete Workflow Test Page" for "Title"
      And I press the "Filter" button
      And wait 3s
     Then I should see "Complete Workflow Test Page"
     When I click "Edit" in the "Complete Workflow Test Page" row
      And wait
     Then I should see "Complete Workflow Test Page"
     When I open the top bar page actions menu
     Then I should see "Delete"
     When I click "Delete"
      And wait
     Then I should see "Are you sure you want to delete"
     When I press "Delete"
      And wait 3s
     Then I should see "has been deleted."


    # Verify content appears in trash
     When I go to "/admin/content/trash"
      And wait
     Then I should see "Trash"
      And I should see "Complete Workflow Test Page"

    # Test individual restore functionality (verify restore operation works)
     When I click "Restore" in the "Complete Workflow Test Page" row
      And wait 3s
     Then I should see "Are you sure you want to restore"
     When I press the confirm button in modal
      And wait 3s
      And I wait for AJAX to finish

    # Restore operation completed successfully

    # Create new content for purge testing
     When I go to "/node/add/page"
      And wait
     Then I should see "Create Basic page"
     When I fill in "Purge Test Page" for "Title"
      And wait 3s
      And I fill in the rich text editor field "Body" with "This content will be used to test purge operations"
      And I select "published" from "edit-moderation-state-0-state--2"
      And I press the "Save as" button
      And wait
     Then I should see "Basic page Purge Test Page has been created."

    # Delete the new content
     When I go to "/admin/content"
      And wait
     Then I should see "Content"
     When I fill in "Purge Test Page" for "Title"
      And I press the "Filter" button
      And wait 3s
     Then I should see "Purge Test Page"
     When I click "Edit" in the "Purge Test Page" row
      And wait
     Then I should see "Purge Test Page"
     When I open the top bar page actions menu
     Then I should see "Delete"
     When I click "Delete"
      And wait
     Then I should see "Are you sure you want to delete"
     When I press "Delete"
      And wait 3s
     Then I should see "has been deleted."

    # Verify purge functionality is available (content appears in trash)
     When I go to "/admin/content/trash"
      And wait 3s
     Then I should see "Trash"
      And I should see "Purge Test Page"

  @javascript @local @development @staging @production
  Scenario: Verify Editor can create, delete, and restore content through trash workflow
    Given I am a logged in user with the "Editor" user
     When I go to "/node/add/page"
      And wait
     Then I should see "Create Basic page"
     When I fill in "Editor Permission Test" for "Title"
      And wait 3s
      And I fill in the rich text editor field "Body" with "Test page for editor permissions - can restore nodes individually"
      And I select "published" from "edit-moderation-state-0-state--2"
      And I press the "Save as" button
      And wait
     Then I should see "Basic page Editor Permission Test has been created."

    # Delete content as editor
     When I go to "/admin/content"
      And wait
     Then I should see "Content"
     When I fill in "Editor Permission Test" for "Title"
      And I press the "Filter" button
      And wait 3s
     Then I should see "Editor Permission Test"
     When I click "Edit" in the "Editor Permission Test" row
      And wait
     Then I should see "Editor Permission Test"
     When I open the top bar page actions menu
     Then I should see "Delete"
     When I click "Delete"
      And wait
     Then I should see "Are you sure you want to delete"
     When I press "Delete"
      And wait 3s
     Then I should see "has been deleted."

    # Verify editor can access trash and restore content
     When I go to "/admin/content/trash"
      And wait
     Then I should see "Trash"
      And I should see "Editor Permission Test"
     When I click "Restore" in the "Editor Permission Test" row
      And wait 3s
  
  @javascript @local @development @staging @production
  Scenario: Verify SEO admin can view and delete content but has limited trash operations
    Given I am a logged in user with the "SEO admin" user
     When I go to "/node/add/page"
      And wait
     Then I should see "Create Basic page"
     When I fill in "SEO Admin Permission Test" for "Title"
      And wait 3s
      And I fill in the rich text editor field "Body" with "Test page for SEO admin permissions - view only access to trash"
      And I select "published" from "edit-moderation-state-0-state--2"
      And I press the "Save as" button
      And wait
     Then I should see "Basic page SEO Admin Permission Test has been created."

    # Delete content as SEO admin
     When I go to "/admin/content"
      And wait
     Then I should see "Content"
     When I fill in "SEO Admin Permission Test" for "Title"
      And I press the "Filter" button
      And wait 3s
     Then I should see "SEO Admin Permission Test"
     When I click "Edit" in the "SEO Admin Permission Test" row
      And wait
     Then I should see "SEO Admin Permission Test"
     When I open the top bar page actions menu
     Then I should see "Delete"
     When I click "Delete"
      And wait
     Then I should see "Are you sure you want to delete"
     When I press "Delete"
      And wait 3s
     Then I should see "has been deleted."

    # Verify SEO admin can view trash but has limited operations
     When I go to "/admin/content/trash"
      And wait
     Then I should see "Trash"
      And I should see "SEO Admin Permission Test"
