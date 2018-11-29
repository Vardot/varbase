Feature: Varbase reports

  @ORPHAN
  Scenario: Access content report
    Given I am a logged in user with the "webmaster" user
    When I go to "/admin/status/reports/varbase"
    Then I should see "Content report"
    When I click on "Content report"
    Then I should see the page title as "Created content report"
