Feature: Cleanup leftover media from the Media Library

@javascript @cleanup @local @development
Scenario: Delete leftover media from the Media Library
  Given I am a logged in user with the "webmaster" user
   When I go to "/admin/content/media-grid"
    And I wait
   Then I should see "Media"
   When I check the box "edit-select-all"
    And I select "Delete selected entities" from "action"
    And I press "Apply to selected items"
    And I wait
   Then I should see "Are you sure you wish to perform"
   When I press "Execute action"
    And I wait 10s
   Then I should see "Media"
