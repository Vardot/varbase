Feature: Content Management - Add default [entityqueue] module testing content and configuration.

@javascript @init @tools @local @development @staging
Scenario: Create "Test Content" content type.
  Given I am a logged in user with the "test_super_admin" user
   When I go to "/admin/structure/types/add"
    And I wait
   Then I should see "Add content type"
   When I fill in "Test Content" for "Name"
    And I fill in "test_content" for "Machine-readable name"
    And I press "Save and manage fields"
    And I wait
   Then I should see "The content type Test Content has been added."

@javascript @init @tools @local @development @staging
Scenario: Add Entity Queue "Test Queue" and use "Test Content" content type.
  Given I am a logged in user with the "test_super_admin" user
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

@javascript @init @tools @local @development @staging
Scenario: Add Test content N1, N2, N3, N4 type of test content.
  Given I am a logged in user with the "test_super_admin" user
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

@javascript @init @tools @local @development @staging
Scenario: Add Test content N1, N2, N3, N4 nodes to the "Test Queue" entityqueue.
  Given I am a logged in user with the "test_super_admin" user
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
