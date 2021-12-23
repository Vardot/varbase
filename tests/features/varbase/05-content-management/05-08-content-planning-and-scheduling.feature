Feature: Content Management - Content Planning and scheduling
As a content admin
I want to be able to add plan content publishing for internal content
So that they will be scheduled to publish or publish on the planed time.

  @javascript @local @development @staging @production
  Scenario: Check Content planner dashboard page
    Given I am a logged in user with the "webmaster" user
     When I go to "/admin/content-planner/dashboard"
      And I wait
     Then I should see "Dashboard"
      And I should see "Content Status Widget"
      And I should see "Recent Calendar Publications Widget"
      And I should see "Recent Kanban Activities"

  @javascript @local @development @staging @production
  Scenario: Check Content Calendar page
    Given I am a logged in user with the "webmaster" user
     When I go to "/admin/content-calendar/show-current-year"
      And I wait
     Then I should see "Content Calendar"

  @javascript @local @development @staging @production
  Scenario: Check Content Kanban page
    Given I am a logged in user with the "webmaster" user
     When I go to "/admin/content-kanban"
      And I wait
     Then I should see "Content Kanban"
      And I should see "Simple"

# WIP needs to manage permissions and a check for each user role.