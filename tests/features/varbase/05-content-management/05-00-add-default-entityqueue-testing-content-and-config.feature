Feature: Content Management - Add default [entityqueue] module testing content and configuration

@javascript @init @tools @local @development @staging
Scenario: Create Test Content type
  Given I am a logged in user with the "webmaster" user
   When I go to "/admin/structure/types/add"
    And I wait
   Then I should see "Add content type"
   When I fill in "Test Content" for "Name"
    And I wait for AJAX to finish
    And I wait for 2 seconds
    And I press "Save and manage fields"
    And I wait
   Then I should see "The content type Test Content has been added."

@javascript @init @tools @local @development @staging
Scenario: Add Entity Queue Test Queue to be used with Test Content type
  Given I am a logged in user with the "webmaster" user
   When I go to "/admin/structure/entityqueue"
    And I wait
   Then I should see "Add entity queue"
   When I click "Add entity queue"
    And I wait
   Then I should see "Configure entity queue"
   When I fill in "Test Queue" for "Name"
    And I wait for 5 seconds
    And I press "Save"
    And I wait
   Then I should see "The entity queue Test Queue has been added."

@javascript @init @tools @local @development @staging
Scenario: Add Test content N1, N2, N3 type of test content
  Given I am a logged in user with the "webmaster" user
   When I go to "/node/add/test_content"
    And I wait
   Then I should see "Create Test Content"
   When I fill in "Test content N1" for "Title"
    And I fill in the rich text editor field "Body" with "Test content N1 Body"
    And I select "published" from "edit-moderation-state-0-state"
    And I press the "Save" button
    And I wait
   Then I should see "Test Content Test content N1 has been created."

   When I go to "/node/add/test_content"
    And I wait
   Then I should see "Create Test Content"
   When I fill in "Test content N2" for "Title"
    And I fill in the rich text editor field "Body" with "Test content N2 Body"
    And I select "published" from "edit-moderation-state-0-state"
    And I press the "Save" button
    And I wait
   Then I should see "Test Content Test content N2 has been created."

   When I go to "/node/add/test_content"
    And I wait
   Then I should see "Create Test Content"
   When I fill in "Test content N3" for "Title"
    And I fill in the rich text editor field "Body" with "Test content N3 Body"
    And I select "published" from "edit-moderation-state-0-state"
    And I press the "Save" button
    And I wait
   Then I should see "Test Content Test content N3 has been created."

@javascript @init @tools @local @development @staging
Scenario: Add Test content N1, N2, N3 nodes to the Test Queue entityqueue
  Given I am a logged in user with the "webmaster" user
   When I go to "/admin/structure/entityqueue"
    And I wait
   Then I should see "Test Queue"

  # Add "Test content N1" to the location #1 in the "Test Queue"
   When I click "Edit items" in the "Test Queue" row
    And I wait
   Then I should see "Edit subqueue Test Queue"
	 When I press "Add existing item"
    And I wait for AJAX to finish
	 Then I should see "Item"
   When I fill in "Test content N1" for "items[form][0][entity_id]"
    And I press "Add item"
    And I wait for AJAX to finish
   Then I should see "Test content N1"

  # Add "Test content N2" to the location #2 in the "Test Queue"
   When I press "Add existing item"
	  And I wait for AJAX to finish
	 Then I should see "Item"
   When I fill in "Test content N2" for "items[form][1][entity_id]"
    And I press "Add item"
    And I wait for AJAX to finish
   Then I should see "Test content N1"

  # Add "Test content N3" to the location #3 in the "Test Queue"
   When I press "Add existing item"
	  And I wait for AJAX to finish
	 Then I should see "Item"
   When I fill in "Test content N3" for "items[form][2][entity_id]"
    And I press "Add item"
    And I wait for AJAX to finish
   Then I should see "Test content N1"
   When I press "Save"
    And I wait
   Then I should see "3 items" in the "Test Queue" row
