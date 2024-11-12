Feature: Content Management - Add hero slider to entity queue using entity queue form widget
      As a logged in user with a permission to mange entity queues
      I want to be able to add and remove entities to any allowed entity queue.

  @javascript @local @development @staging @production
  Scenario: Add a Test hero sliders to the heroslider entity queue them remove them
    Given I am a logged in user with the "Super admin" user

    # Add the "Test hero slier #1" content and to the hero slider queue.
     When I go to "/node/add/varbase_heroslider"
      And I wait max of 5s for the page to be ready and loaded
     Then I should see "Create Hero slider"
     When I fill in "Test hero slider #1" for "Slide title"
      And I fill in "Test hero slider slide text #1" for "Slide text"
      And I press "field_media_single-media-library-open-button"
      And I wait for AJAX to finish
     Then I should see "Name"
     When I fill in "Background Image 2" for "Name"
      And I press the "Apply filters" button
     Then I should see image with the "Background Image 2" title text
      And I wait for AJAX to finish
     When I check the box "Select Background Image 2"
      And I wait for AJAX to finish
      And I press "dialog-submit"
      And I wait for AJAX to finish
      And I wait max of 5s
      And I expand the field "edit-entityqueue-form-widget"
      And I wait for AJAX to finish
     Then I should see "Choose from the available entityqueues below to push this content to."
     When I check the box "varbase_heroslider"
      And I select "published" from "edit-moderation-state-0-state"
      And I press the "Save as" button
      And wait
     Then I should see "Test hero slider #1"

    # Add the "Test hero slier #2" content and to the hero slider queue.
     When I go to "/node/add/varbase_heroslider"
      And I wait max of 2s for the page to be ready and loaded
     Then I should see "Create Hero slider"
     When I fill in "Test hero slider #2" for "Slide title"
      And I fill in "Test hero slider slide text #2" for "Slide text"
      And I press "field_media_single-media-library-open-button"
      And I wait for AJAX to finish
     Then I should see "Name"
     When I fill in "SAAS 1" for "Name"
      And I press the "Apply filters" button
     Then I should see image with the "SAAS 1" title text
      And I wait for AJAX to finish
     When I check the box "Select SAAS 1"
      And I wait for AJAX to finish
      And I press "dialog-submit"
      And I wait for AJAX to finish
      And I wait max of 5s
      And I expand the field "edit-entityqueue-form-widget"
      And I wait for AJAX to finish
     Then I should see "Choose from the available entityqueues below to push this content to."
     When I check the box "varbase_heroslider"
      And I select "published" from "edit-moderation-state-0-state"
      And I press the "Save as" button
      And wait
     Then I should see "Test hero slider #2"

    # Check that both hero sliders are listed in the queue.
     When I go to "/admin/structure/entityqueue/varbase_heroslider/varbase_heroslider"
      And wait
     Then I should see "Test hero slider #1"
      And I should see "Test hero slider #2"

    # Delete both sliders.
     When I go to "/admin/content"
      And wait
     Then I should see "Content"
     When I check the box "Test hero slider #1"
      And I check the box "Test hero slider #2"
      And I select "Delete selected entities / translations" from "action"
     When I press "Apply to selected items"
      And wait 3s
     Then I should see "Delete entities (2)"

    # Check that the 2 hero sliders had beend removed from the queue.
     When I go to "/admin/structure/entityqueue/varbase_heroslider/varbase_heroslider"
      And wait
     Then I should not see "Test hero slider #1"
      And I should not see "Test hero slider #2"