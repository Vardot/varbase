Feature: Add French language if we do not have it to languages in the system.

  @javascript @init @tools @local @development @staging @french
  Scenario: Add French language if we do not have it to languages in the system.
    Given I am a logged in user with the "webmaster" user
     When I go to "/admin/config/regional/language"
      And I wait
     Then I should not see "French"
      But I should see "Add language"
     When I click "Add language"
      And I wait
     Then I should see "Add a language to be supported by your site."
     When I select "fr" from "Language name"
      And I press "Add language"
      And I wait for the batch job to finish
     Then I should see "The language French has been created and can now be used."
      And I wait for the batch job to finish
     When I go to "/admin/config/regional/language"
      And I wait
     Then I should see "French"
