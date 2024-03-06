Feature: Cleanup after [entityqueue] module tests

@javascript @cleanup @local @development
Scenario: Delete Entity Queue Test Queue
  Given I am a logged in user with the "webmaster" user
   When I go to "/admin/structure/entityqueue/test_queue/delete"
    And I wait
   Then I should see "Are you sure you want to delete the entity queue Test Queue?"
   When I press "Delete"
    And I wait
   Then I should see "The entity queue Test Queue has been deleted."


@javascript @cleanup @local @development
Scenario: Delete Test Content content type item
  Given I am a logged in user with the "webmaster" user
   When I go to "/admin/structure/types/manage/test_content/delete"
    And I wait
   Then I should see "Are you sure you want to delete the content type Test Content?"
   When I press "Delete"
    And I wait
   Then I should see "The content type Test Content has been deleted."
