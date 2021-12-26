Feature: Delete Arabic language from the system

  @javascript @cleanup @arabic @local
  Scenario: Delete Arabic language from the system
    Given I am a logged in user with the "webmaster" user
     When I go to "/admin/config/regional/language/delete/ar"
      And I wait
     Then I should see "Are you sure you want to delete the language Arabic?"
     When I press "Delete"
      And I wait 30s
     Then I should see "The Arabic (ar) language has been removed."
