Feature: Add default [Entity Browser] module testing browsers and configuration.
As an Editor
I need to be provided with a generic entity browser/picker/selector.
So that they will be used when I needs to select few entities and do something with them.

@javascript @check @local @development @staging @production
Scenario: Check if we do have the [Entity Browser] module installed in the system.
  Given I am a logged in user with the "webmaster" user
   When I go to "/admin/modules"
    And I wait
   Then I should see "Entity Browser"
    And the "Entity Browser" checkbox should be checked