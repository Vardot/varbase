Feature: Add default [Configuration Update Manager] module testing configuration.
As a super admin
When I update a module, and it has either changed default config that it provides,or added new config items.
So that I will be able to import the new items, view the differences between the site config and the changed config, and possibly "revert" (or it may be an update) to the newly-provided default config.

@javascript @check @local @development @staging @production
Scenario: Check if we do have the [Configuration Update Manager] module installed in the system.
  Given I am a logged in user with the "webmaster" user
   When I go to "/admin/modules"
    And I wait
   Then I should see "Configuration Update Base"
    And I should see "Configuration Update Reports"
    And the "Configuration Update Base" checkbox should be checked
    And the "Configuration Update Reports" checkbox should be checked