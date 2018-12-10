Feature: Content Management - Add hero slider to entityqueue using entityqueue form widget.
As a logged in user with a permission to mange entityqueues
I want to be able to add and remove entities to any allowed entityqueue.

@local @development @staging @production
  Scenario: Upload the "Flag Earth" file.
    Given I am a logged in user with the "test_site_admin" user
     When I go to "media/add/image"
      And I wait
     Then I should see "Allowed types: png gif jpg jpeg."
     When I attach the file "flag-earth.jpg" to "Image"
      And I wait
      And I press the "Save" button
      And I wait
      And I fill in "Flag Earth in space" for "field_media_image[0][alt]"
      And I fill in "Flag Earth all earth in space" for "field_media_image[0][title]"
      And I fill in "Flag Earth" for "name[0][value]"
      And I check the box "Save to Library"
      And I press the "Save" button
      And I wait
     Then I should see "Flag Earth"
  #-----------------------------------------------------------------------------

  @javascript @local @development @staging @production
  Scenario: Check that we can open the hero slider media browser.
    Given I am a logged in user with the "test_super_admin" user
     When I go to "node/add/varbase_heroslider_media"
      And I wait max of 2s for the page to be ready and loaded
     Then I should see "Create Hero slider"
     When I press "Select media"
      And I wait for AJAX to finish
     Then the image media browser should be open

  @javascript @local @development @staging @production
  Scenario: Add a "Test hero slider number 1" to the heroslider entity queue.
    Given I am a logged in user with the "test_super_admin" user
     When I go to "node/add/varbase_heroslider_media"
      And I wait max of 2s for the page to be ready and loaded
     Then I should see "Create Hero slider"
     When I fill in "Test hero slider #1" for "Slide title"
      And I fill in "Test hero slider slide text #1" for "Slide text"
      And I press "Select media"
      And I wait for AJAX to finish
     Then the image media browser should be open
     When I switch to iframe "entity_browser_iframe_media_browser"
      And I fill in "Flag Earth" for "edit-name"
      And I press the "Search" button
      And wait max of 5s
     Then I should see image with the "Flag Earth all earth in space" title text
     When I double click on the image with the "Flag Earth all earth in space" title text
      And I wait for AJAX to finish
      And wait max of 5s
      And I wait for AJAX to finish
      And wait max of 5s
      And I switch to main frame
      And I wait for AJAX to finish
      And wait max of 5s
      And I expand the field "edit-entityqueue-form-widget"
      And I wait for AJAX to finish
     Then I should see "Choose from the available entityqueues below to push this content to."
     When I check the box "varbase_heroslider_media"
      And I press "Save"
      And I wait
     Then I should see "Test hero slider #1"

  @javascript @local @development @staging @production
  Scenario: Add a "Test hero slider number 2" to the heroslider entity queue.
    Given I am a logged in user with the "test_super_admin" user
     When I go to "node/add/varbase_heroslider_media"
      And I wait max of 2s for the page to be ready and loaded
     Then I should see "Create Hero slider"
     When I fill in "Test hero slider #2" for "Slide title"
      And I fill in "Test hero slider slide text #2" for "Slide text"
      And I press "Select media"
      And I wait for AJAX to finish
     Then the image media browser should be open
     When I switch to iframe "entity_browser_iframe_media_browser"
      And I fill in "Flag Earth" for "edit-name"
      And I press the "Search" button
      And wait max of 5s
     Then I should see image with the "Flag Earth all earth in space" title text
     When I double click on the image with the "Flag Earth all earth in space" title text
      And I wait for AJAX to finish
      And wait max of 5s
      And I wait for AJAX to finish
      And wait max of 5s
      And I switch to main frame
      And I wait for AJAX to finish
      And wait max of 5s
      And I expand the field "edit-entityqueue-form-widget"
      And I wait for AJAX to finish
     Then I should see "Choose from the available entityqueues below to push this content to."
     When I check the box "varbase_heroslider_media"
      And I press "Save"
      And I wait
     Then I should see "Test hero slider #2"

  @javascript @local @development @staging @production
  Scenario: Check if the "Hero slider" added to the "varbase_heroslider_media" entityqueue.
    Given I am a logged in user with the "test_super_admin" user
     When I go to "admin/structure/entityqueue/varbase_heroslider_media/varbase_heroslider_media"
      And I wait
     Then I should see "Test hero slider #1" value in the "edit-items-0-target-id" input element
      And I should see "Test hero slider #2" value in the "edit-items-1-target-id" input element

  @javascript @local @development @staging @production
  Scenario: Remove a "Hero slider" from the "varbase_heroslider_media" entityqueue
    Given I am a logged in user with the "test_super_admin" user
     When I go to "admin/content"
      And I wait
     Then I should see "Content"
     When I fill in "Test hero slider #1" for "Title"
      And I press the "Filter" button
      And I wait
     Then I should see "Test hero slider #1"
     When I click "Edit" in the "Test hero slider #1" row
      And I wait
      And I expand the field "edit-entityqueue-form-widget"
     Then the "varbase_heroslider_media" checkbox should be checked
     When I uncheck the box "varbase_heroslider_media"
      And I press "Save"
      And I go to "admin/structure/entityqueue/varbase_heroslider_media/varbase_heroslider_media"
      And I wait
     Then I should not see "Test hero slider #1"
