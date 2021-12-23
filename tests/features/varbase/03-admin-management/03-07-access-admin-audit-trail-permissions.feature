Feature: User Management - Standard User Management - Users with permission to access the Admin audit trails
As a logged in site admin or editor with permission to access the Admin audit trails
I will be able to trails of actions on the site by the same user and or users
So that only users with permission can see trails of audit changes on the website

  @javascript @check @local @development @staging @production
  Scenario: Check that user Number 1 can access the Admin audit trails
    Given I am a logged in user with the "webmaster" user
     When I go to "/admin/reports/audit-trail"
      And I wait
     Then I should see "Admin audit trails"

  @javascript @check @local @development @staging @production
  Scenario: Check that an anonymous users can not access the Admin audit trails
    Given I am an anonymous user
     When I go to "/admin/reports/audit-trail"
      And I wait
     Then I should not see "Admin audit trails"
      And I should see "Access denied"

  @javascript @check @local @development @staging @production
  Scenario: Check that an authenticated user can not access the Admin audit trails
    Given I am a logged in user with the "Normal user" user
     When I go to "/admin/reports/audit-trail"
      And I wait
     Then I should not see "Admin audit trails"
      And I should see "Access denied"

  @javascript @check @local @development @staging @production
  Scenario: Check that Editor users can access the Admin audit trails
    Given I am a logged in user with the "Editor" user
     When I go to "/admin/reports/audit-trail"
      And I wait
     Then I should see "Admin audit trails"

  @javascript @check @local @development @staging @production
  Scenario: Check that Content Admin users can access the Admin audit trails
    Given I am a logged in user with the "Content admin" user
     When I go to "/admin/reports/audit-trail"
      And I wait
     Then I should see "Admin audit trails"

  @javascript @check @local @development @staging @production
  Scenario: Check that SEO Admin users can access the Admin audit trails
    Given I am a logged in user with the "SEO admin" user
     When I go to "/admin/reports/audit-trail"
      And I wait
     Then I should see "Admin audit trails"

  @javascript @check @local @development @staging @production
  Scenario: Check that Site Admin users can access the Admin audit trails
    Given I am a logged in user with the "Site admin" user
     When I go to "/admin/reports/audit-trail"
      And I wait
     Then I should see "Admin audit trails"
