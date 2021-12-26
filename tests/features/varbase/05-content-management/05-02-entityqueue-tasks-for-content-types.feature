Feature: Content Management - Standard Entity Queue Management - Have Entity queue tab inside the full content page and be able to Add to a queue or Remove from a queue
As a logged in user with a permission to manage entity queues
I well be able to see an Entity queue tab inside the full content page of a selected content
So that I can Add to queue or Remove from queue for the content.

@javascript @local @development
Scenario: Check if queuable content have the Entityqueue tab at the full content page and can Add to queue or Remove from queue
  Given I am a logged in user with the "Super admin" user
   When I go to "/node/add/test_content"
    And I wait
   Then I should see "Create Test Content"
   When I fill in "Test tab content number 1" for "Title"
    And I fill in the rich text editor field "Body" with "Test tab content number 1 Body"
    And I press "Save"
    And I wait
   Then I should see "Test Content Test tab content number 1 has been created."
	 When I click "Tasks"
		And I wait for AJAX to finish
    And I should see "Entityqueue"
   When I click "Entityqueue"
    And I wait
   Then I should see "Add to queue"
   When I click "Add to queue"
    And I wait for AJAX to finish
   Then I should see "Remove from queue"
   When I click "Remove from queue"
    And I wait for AJAX to finish
   Then I should see "Add to queue"