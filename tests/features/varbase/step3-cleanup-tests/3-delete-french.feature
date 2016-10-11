Feature: Delete French language from the system.

  @cleanup @tools @feanch @local
  Scenario: Delete French language from the system.
    Given I am a logged in user with the "webmaster" user
     When I go to "/admin/config/regional/language/delete/fr"
      And I wait
     Then I should see "Are you sure you want to delete the language French?"
     When I press "Delete"
      And I wait
     Then I should see "The French (fr) language has been removed."
