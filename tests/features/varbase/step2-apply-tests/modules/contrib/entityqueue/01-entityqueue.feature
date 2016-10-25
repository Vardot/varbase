Feature: Functional Testing for the [entityqueue] Module.

@javascript @check @local @development @staging @production
Scenario: Check if we do have the eneityqueue module installed in the system.
  Given I am a logged in user with the "webmaster" user
   When I go to "/admin/modules"
    And I wait
   Then I should see "Entityqueue"
    And the "Entityqueue" checkbox should be checked

@javascript @init @local @development
Scenario: Create "Test Content" content type.
  Given I am a logged in user with the "webmaster" user
   When I go to "/admin/structure/types/add"
    And I wait
   Then I should see "Add content type"
   When I fill in "Test Content" for "Name"
    And I fill in "test_content" for "Machine-readable name"
    And I press "Save and manage fields"
    And I wait
   Then I should see "The content type Test Content has been added."

@javascript @init @local @development
Scenario: Add Entity Queue "Test Queue" and use "Test Content" content type.
  Given I am a logged in user with the "webmaster" user
   When I go to "/admin/structure/entityqueue"
    And I wait
   Then I should see "Add entity queue"
   When I click "Add entity queue"
    And I wait
   Then I should see "Add Entity Queue"
   When I fill in "Test Queue" for "Name"
    And I fill in "test_queue" for "Machine-readable name"
    And I check the box "Test Content"
    And I press "Save"
    And I wait
   Then I should see "The entity queue Test Queue has been added."

@javascript @init @local @development
Scenario: Add Test content N1, N2, N3, N4 type of test content.
  Given I am a logged in user with the "webmaster" user
   When I go to "/node/add/test_content"
    And I wait
   Then I should see "Create Test Content"
   When I fill in "Test content N1" for "Title"
    And I fill in the rich text editor field "Body" with "Test content N1 Body"
    And I press "Save"
    And I wait
   Then I should see "Test Content Test content N1 has been created."
   
   When I go to "/node/add/test_content"
    And I wait
   Then I should see "Create Test Content"
   When I fill in "Test content N2" for "Title"
    And I fill in the rich text editor field "Body" with "Test content N2 Body"
    And I press "Save"
    And I wait
   Then I should see "Test Content Test content N2 has been created."

   When I go to "/node/add/test_content"
    And I wait
   Then I should see "Create Test Content"
   When I fill in "Test content N3" for "Title"
    And I fill in the rich text editor field "Body" with "Test content N3 Body"
    And I press "Save"
    And I wait
   Then I should see "Test Content Test content N3 has been created."



@javascript @init @local @development
Scenario: Add Test content N1, N2, N3, N4 nodes to the "Test Queue" entityqueue.
  Given I am a logged in user with the "webmaster" user
   When I go to "/admin/structure/entityqueue"
    And I wait
   Then I should see "Test Queue"

  # Add "Test content N1" to the location #1 in the "Test Queue"
   When I click "Edit items" in the "Test Queue" row
    And I wait
   Then I should see "Edit subqueue Test Queue"
   When I fill in "Test content N1" for "items[0][target_id]"
    And I press "Save"
   Then I should see "1 items" in the "Test Queue" row

  # Add "Test content N2" to the location #2 in the "Test Queue"
   When I click "Edit items" in the "Test Queue" row
    And I wait
   Then I should see "Edit subqueue Test Queue"
   When I fill in "Test content N2" for "items[1][target_id]"
    And I press "Save"
   Then I should see "2 items" in the "Test Queue" row

  # Add "Test content N3" to the location #3 in the "Test Queue"
   When I click "Edit items" in the "Test Queue" row
    And I wait
   Then I should see "Edit subqueue Test Queue"
   When I fill in "Test content N3" for "items[2][target_id]"
    And I press "Save"
   Then I should see "3 items" in the "Test Queue" row
   

@javascript @local @development
Scenario: Check that Reverse order in admin view is working.
  Given I am a logged in user with the "webmaster" user
   When I go to "/admin/structure/entityqueue"
    And I wait
   Then I should see "Test Queue"
   When I click "Edit items" in the "Test Queue" row
    And I wait
   Then I should see "Edit subqueue Test Queue"
    And I should see "Test content N1" value in the "edit-items-0-target-id" input element
    And I should see "Test content N2" value in the "edit-items-1-target-id" input element
    And I should see "Test content N3" value in the "edit-items-2-target-id" input element

   When I go to "/admin/structure/entityqueue/test_queue#edit-queue-settings"
    And I wait
   Then I should see "Edit Entity Queue"
   When I click "Queue settings"
    And I wait
   Then I should see "Restrict this queue to a minimum of"
    And I should see "Reverse order in admin view"
   When I check the box "Reverse order in admin view"
    And I press "Save"
    And I wait
   Then I should see "The entity queue Test Queue has been updated."
   When I go to "/admin/structure/entityqueue"
    And I wait
   Then I should see "Test Queue"
   When I click "Edit items" in the "Test Queue" row
    And I wait
   Then I should see "Edit subqueue Test Queue"
    And I should see "Test content N3" value in the "edit-items-0-target-id" input element
    And I should see "Test content N2" value in the "edit-items-1-target-id" input element
    And I should see "Test content N1" value in the "edit-items-2-target-id" input element

@javascript @cleanup @local @development
Scenario: Delete Test content N1, N2, N3, N4 type of test content.
  Given I am a logged in user with the "webmaster" user
   When I go to "/admin/content"
    And I wait
   Then I should see "Content"
   When I fill in "Test content N1" for "Title"
    And I press "Filter"
    And I wait
   Then I should see "Test content N1"
   When I click "Edit" in the "Test content N1" row
    And I wait
   Then I should see "Edit Test Content Test content N1"
   When I click "Delete"
    And I wait
   Then I should see "Are you sure you want to delete the content Test content N1?"
   When I press "Delete"
   Then I should see "The Test Content Test content N1 has been deleted."

   When I go to "/admin/content"
    And I wait
   Then I should see "Content"
   When I fill in "Test content N2" for "Title"
    And I press "Filter"
    And I wait
   Then I should see "Test content N2"
   When I click "Edit" in the "Test content N2" row
    And I wait
   Then I should see "Edit Test Content Test content N2"
   When I click "Delete"
    And I wait
   Then I should see "Are you sure you want to delete the content Test content N2?"
   When I press "Delete"
   Then I should see "The Test Content Test content N2 has been deleted."

   When I go to "/admin/content"
    And I wait
   Then I should see "Content"
   When I fill in "Test content N3" for "Title"
    And I press "Filter"
    And I wait
   Then I should see "Test content N3"
   When I click "Edit" in the "Test content N3" row
    And I wait
   Then I should see "Edit Test Content Test content N3"
   When I click "Delete"
    And I wait
   Then I should see "Are you sure you want to delete the content Test content N3?"
   When I press "Delete"
   Then I should see "The Test Content Test content N3 has been deleted."


@javascript @cleanup @local @development
Scenario: Delete Entity Queue "Test Queue".
  Given I am a logged in user with the "webmaster" user
   When I go to "/admin/structure/entityqueue/test_queue/delete"
    And I wait
   Then I should see "Are you sure you want to delete the entity queue Test Queue?"
   When I press "Delete"
    And I wait
   Then I should see "The entity queue Test Queue has been deleted."


@javascript @cleanup @local @development
Scenario: Delete "Test Content" content type item
  Given I am a logged in user with the "webmaster" user
   When I go to "/admin/structure/types/manage/test_content/delete"
    And I wait
   Then I should see "Are you sure you want to delete the content type Test Content?"
   When I press "Delete"
    And I wait
   Then I should see "The content type Test Content has been deleted."
