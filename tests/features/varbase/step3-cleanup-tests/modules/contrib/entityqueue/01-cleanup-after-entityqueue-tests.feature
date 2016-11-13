Feature: Cleanup after [entityqueue] module tests.

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

   When I go to "/admin/content"
    And I wait
   Then I should see "Content"
   When I fill in "Test tab content number 1" for "Title"
    And I press "Filter"
    And I wait
   Then I should see "Test tab content number 1"
   When I click "Edit" in the "Test tab content number 1" row
    And I wait
   Then I should see "Edit Test Content Test tab content number 1"
   When I click "Delete"
    And I wait
   Then I should see "Are you sure you want to delete the content Test tab content number 1?"
   When I press "Delete"
   Then I should see "The Test Content Test tab content number 1 has been deleted."


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
