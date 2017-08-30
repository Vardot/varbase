Feature: Add Arabic language if we do not have it to languages in the system.

  @init @tools @local @development @staging @arabic
  Scenario: Add Arabic language if we do not have it to languages in the system.
    Given I am a logged in user with the "webmaster" user
     When I go to "/admin/config/regional/language"
      And I wait
     Then I should not see "Arabic"
      But I should see "Add language"
     When I click "Add language"
      And I wait
     Then I should see "Add a language to be supported by your site."
     When I select "ar" from "Language name"
      And I press "Add language"
      And I wait
     When I go to "/admin/config/regional/language"
      And I wait
     Then I should see "Arabic"
