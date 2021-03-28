Feature: Content Management - Standard Entity Queue Management - Have the option to Reverse order in admin view
As a logged in user with a permission to manage entity queues
I well be able to view the order of entities in entity queues in a reverse order.
So that they will have a flipped order at the front-end.

@javascript @local @development
Scenario: Check that Reverse order in admin view is working
  Given I am a logged in user with the "webmaster" user
   When I go to "/admin/structure/entityqueue"
    And I wait
   Then I should see "Test Queue"
   When I click "Edit items" in the "Test Queue" row
    And I wait
   Then I should see "Edit subqueue Test Queue"
    And I should see "Test content N1" in the "Test content N1" row
    And I should see "Test content N2" in the "Test content N2" row
    And I should see "Test content N3" in the "Test content N3" row

   When I go to "/admin/structure/entityqueue/test_queue#edit-queue-settings"
    And I wait
   Then I should see "Configure Test Queue"
    And I should see "Restrict this queue to a minimum of"
    And I should see "Reverse"
   When I check the box "Reverse"
    And I press "Save"
    And I wait
   Then I should see "The entity queue Test Queue has been updated."
   When I go to "/admin/structure/entityqueue"
    And I wait
   Then I should see "Test Queue"
   When I click "Edit items" in the "Test Queue" row
    And I wait
   Then I should see "Edit subqueue Test Queue"
   When I press "Reverse"
    And I wait for AJAX to finish
    And I press "Save"
    And I wait
   Then I should see "The entity subqueue Test Queue has been updated."
   When I go to "/admin/structure/entityqueue"
    And I wait
   Then I should see "Test Queue"
   When I click "Edit items" in the "Test Queue" row
    And I wait
   Then I should see "Edit subqueue Test Queue"
    And I should see "Test content N3" in the "Test content N3" row
    And I should see "Test content N2" in the "Test content N2" row
    And I should see "Test content N1" in the "Test content N1" row

    # Delete test content for subqueue test queue.
    When I go to "/admin/content"
     And I wait
    Then I should see "Content"
    When I check the box "Test content N1"
     And I check the box "Test content N2"
     And I check the box "Test content N3"
     And I select "Delete selected entities / translations" from "action"
    When I press "Apply to selected items"
     And I wait
    Then I should see "Items selected:"
     And I should see "Test content N1"
     And I should see "Test content N2"
     And I should see "Test content N3"
    When I press "Execute action"
     And I wait 10s
    Then I should see "Action processing results: Delete entities (3)."

   When I go to "/admin/structure/entityqueue"
    And I wait
   Then I should see "Test Queue"
   When I click "Edit items" in the "Test Queue" row
    And I wait
   Then I should see "Edit subqueue Test Queue"
    And I should not see "Test content N3"
    And I should not see "Test content N2"
    And I should not see "Test content N1"