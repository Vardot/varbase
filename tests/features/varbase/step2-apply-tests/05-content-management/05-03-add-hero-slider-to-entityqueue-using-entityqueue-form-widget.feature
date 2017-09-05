Feature: Content Management - Add hero slider to entityqueue using entityqueue form widget.
As a logged in user with a permission to mange entityqueues
I want to be able to add and remove entities to any allowed entityqueue.

  @local @development @staging @production
  Scenario: Upload the "Embed Flag Earth" file.
    Given I am a logged in user with the "test_super_admin" user
     When I go to "/admin/content/media"
      And I wait
     Then I should see "Add media"
     When I click "Add media"
      And I wait
     Then I should see "Document"
      And I should see "Image"
      And I should see "Video"
     When I go to "/media/add/image"
      And I wait
     Then I should see "Allowed types: png gif jpg jpeg."
     When I attach the file "flag-earth.jpg" to "Image"
      And I wait
      And I press the "Save" button
      And I wait
      And I fill in "Embed Flag Earth in space" for "field_image[0][alt]"
      And I fill in "Embed Flag Earth all earth in space" for "field_image[0][title]"
      And I fill in "Embed Flag Earth" for "Media name"
      And I press the "Save" button
      And I wait
     Then I should see "Embed Flag Earth"
      And I wait
     When I go to "/admin/content/media"
     Then I should see "Add media"
      And I should see the "Edit" in the "Embed Flag Earth" row

  @javascript @local @development @staging @production
  Scenario: Check if a user with a permission to manage "Entity queues" can add a "heroslider" to "heroslider entityqueu"
    Given I am a logged in user with the "test_super_admin" user
     When I go to "node/add/varbase_heroslider_media"
      And I wait
      And I fill in "Test hero slider" for "Slide title"
      And I fill in "Test hero slider slide text" for "Slide text"
     Then I press "Select Media"
      And I wait for AJAX to finish
     When the image media browser should be open
      And I switch to iframe "entity_browser_iframe_heroslider_media_browser"
      And I fill in "Embed Flag Earth" for "Search"
      And I press the "Search" button
      And I wait for AJAX to finish
     Then I should see image with the "Embed Flag Earth all earth in space" title text
     When I double click on the image with the "Embed Flag Earth all earth in space" title text
      And I switch to main frame
      And I wait
     Then I expand the field "edit-entityqueue-form-widget"
      And I check the box "varbase_heroslider_media"
      And I press "Save"

  @javascript @local @development @staging @production
  Scenario: Check if the "Hero slider" added to the "varbase_heroslider_media" entityqueue.
    Given I am a logged in user with the "test_super_admin" user
     When I go to "admin/structure/entityqueue/varbase_heroslider_media/varbase_heroslider_media"
      And I wait
     Then I should see "Test hero slider" value in the "edit-items-0-target-id" input element

  @javascript @local @development @staging @production
  Scenario: Remove a "Hero slider" from the "varbase_heroslider_media" entityqueue
    Given I am a logged in user with the "test_super_admin" user
     When I go to "admin/content"
      And I wait
     Then I should see "Content"
     When I fill in "Test hero slider" for "Title"
      And I press the "Filter" button
      And I wait
     Then I should see "Test hero slider"
     When I click "Test hero slider"
      And I wait
     When I click "Edit"
      And I wait
      And I expand the field "edit-entityqueue-form-widget"
     Then the "varbase_heroslider_media" checkbox should be checked
     When I uncheck the box "varbase_heroslider_media"
      And I press "Save"
      And I go to "admin/structure/entityqueue/varbase_heroslider_media/varbase_heroslider_media"
      And I wait
     Then I should not see "Test hero slider"
