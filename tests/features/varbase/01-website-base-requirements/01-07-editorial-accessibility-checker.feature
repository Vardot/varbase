Feature: Accessibility - Use the automatically Editorial Accessibility Checker tool
As a logged in site admin or editor with permission to access the a11y checker tools
I will be able to use the tool to automatically identifying and addressing straightforward accessibility issues in various contexts.
So that only users with permission can see and use the tool

  @javascript @check @local @development @staging @production
  Scenario: Check that an anonymous users can not access the Editorial Accessibility Checker
    Given I am an anonymous user
     When I go to the homepage
      And wait
     Then I should not see the a11y checker

  @javascript @check @local @development @staging @production
  Scenario: Check that an authenticated user can not access the Editorial Accessibility Checker
    Given I am a logged in user with the "Normal user" user
     When I go to the homepage
      And wait
     Then I should not see the a11y checker

  @javascript @check @local @development @staging @production
  Scenario: Check that Editor users can access the Editorial Accessibility Checker
    Given I am a logged in user with the "Editor" user
     When I go to the homepage
      And wait
     Then I should see the a11y checker

  @javascript @check @local @development @staging @production
  Scenario: Check that Content Admin users can access the Editorial Accessibility Checker
    Given I am a logged in user with the "Content admin" user
     When I go to the homepage
      And wait
     Then I should see the a11y checker

  @javascript @check @local @development @staging @production
  Scenario: Check that SEO Admin users can access the Editorial Accessibility Checker
    Given I am a logged in user with the "SEO admin" user
     When I go to the homepage
      And wait
     Then I should see the a11y checker

  @javascript @check @local @development @staging @production
  Scenario: Check that Site Admin users can access the Editorial Accessibility Checker
    Given I am a logged in user with the "Site admin" user
     When I go to the homepage
      And wait
     Then I should see the a11y checker

  @javascript @check @local @development @staging @production
  Scenario: Check that user Number 1 can access the Editorial Accessibility Checker
    Given I am a logged in user with the "webmaster" user
     When I go to the homepage
      And wait
     Then I should see the a11y checker

  @javascript @check @local @development @staging @production
  Scenario: Check that anonymous users can not view the dashboard for accessibility checked results
    Given I am an anonymous user
     When I go to "/admin/config/content/editoria11y"
      And wait
     Then I should not see "Editoria11y Settings"
      And I should see "Access denied"
     When I go to "/admin/reports/editoria11y/issues"
      And wait
     Then I should not see "All issues"
      And I should see "Access denied"
     When I go to "/admin/reports/editoria11y/pages"
      And wait
     Then I should not see "Pages with accessibility issues"
      And I should see "Access denied"
     When I go to "/admin/reports/editoria11y/recent"
      And wait
     Then I should not see "Recent accessibility issues"
      And I should see "Access denied"
     When I go to "/admin/reports/editoria11y/dismissals"
      And wait
     Then I should not see "Dismissed accessibility alerts"
      And I should see "Access denied"

  @javascript @check @local @development @staging @production
  Scenario: Check that an authenticated user can not view the dashboard for accessibility checked results
    Given I am a logged in user with the "Normal user" user
     When I go to "/admin/config/content/editoria11y"
      And wait
     Then I should not see "Editoria11y Settings"
      And I should see "Access denied"
     When I go to "/admin/reports/editoria11y/issues"
      And wait
     Then I should not see "All issues"
      And I should see "Access denied"
     When I go to "/admin/reports/editoria11y/pages"
      And wait
     Then I should not see "Pages with accessibility issues"
      And I should see "Access denied"
     When I go to "/admin/reports/editoria11y/recent"
      And wait
     Then I should not see "Recent accessibility issues"
      And I should see "Access denied"
     When I go to "/admin/reports/editoria11y/dismissals"
      And wait
     Then I should not see "Dismissed accessibility alerts"
      And I should see "Access denied"

  @javascript @check @local @development @staging @production
  Scenario: Check that Editor users can view the dashboard for accessibility checked results
    Given I am a logged in user with the "Editor" user
     When I go to "/admin/config/content/editoria11y"
      And wait
     Then I should not see "Editoria11y Settings"
      And I should see "Access denied"
     When I go to "/admin/reports/editoria11y/issues"
      And wait
     Then I should see "All issues"
     When I go to "/admin/reports/editoria11y/pages"
      And wait
     Then I should see "Pages with accessibility issues"
     When I go to "/admin/reports/editoria11y/recent"
      And wait
     Then I should see "Recent accessibility issues"
     When I go to "/admin/reports/editoria11y/dismissals"
      And wait
     Then I should see "Dismissed accessibility alerts"

  @javascript @check @local @development @staging @production
  Scenario: Check that Content Admin users can view the dashboard for accessibility checked results  
    Given I am a logged in user with the "Content admin" user
     When I go to "/admin/config/content/editoria11y"
      And wait
     Then I should not see "Editoria11y Settings"
      And I should see "Access denied"
     When I go to "/admin/reports/editoria11y/issues"
      And wait
     Then I should see "All issues"
     When I go to "/admin/reports/editoria11y/pages"
      And wait
     Then I should see "Pages with accessibility issues"
     When I go to "/admin/reports/editoria11y/recent"
      And wait
     Then I should see "Recent accessibility issues"
     When I go to "/admin/reports/editoria11y/dismissals"
      And wait
     Then I should see "Dismissed accessibility alerts"

  @javascript @check @local @development @staging @production
  Scenario: Check that SEO Admin users can view the dashboard for accessibility checked results
    Given I am a logged in user with the "SEO admin" user
     When I go to "/admin/config/content/editoria11y"
      And wait
     Then I should not see "Editoria11y Settings"
     When I go to "/admin/reports/editoria11y/issues"
      And wait
     Then I should see "All issues"
     When I go to "/admin/reports/editoria11y/pages"
      And wait
     Then I should see "Pages with accessibility issues"
     When I go to "/admin/reports/editoria11y/recent"
      And wait
     Then I should see "Recent accessibility issues"
     When I go to "/admin/reports/editoria11y/dismissals"
      And wait
     Then I should see "Dismissed accessibility alerts"

  @javascript @check @local @development @staging @production
  Scenario: Check that Site Admin users can view the dashboard for accessibility checked results
    Given I am a logged in user with the "Site admin" user
     When I go to "/admin/config/content/editoria11y"
      And wait
     Then I should see "Editoria11y Settings"
     When I go to "/admin/reports/editoria11y/issues"
      And wait
     Then I should see "All issues"
     When I go to "/admin/reports/editoria11y/pages"
      And wait
     Then I should see "Pages with accessibility issues"
     When I go to "/admin/reports/editoria11y/recent"
      And wait
     Then I should see "Recent accessibility issues"
     When I go to "/admin/reports/editoria11y/dismissals"
      And wait
     Then I should see "Dismissed accessibility alerts"

  @javascript @check @local @development @staging @production
  Scenario: Check that user Number 1 can view the dashboard for accessibility checked results
    Given I am a logged in user with the "webmaster" user
     When I go to "/admin/config/content/editoria11y"
      And wait
     Then I should see "Editoria11y Settings"
     When I go to "/admin/reports/editoria11y/issues"
      And wait
     Then I should see "All issues"
     When I go to "/admin/reports/editoria11y/pages"
      And wait
     Then I should see "Pages with accessibility issues"
     When I go to "/admin/reports/editoria11y/recent"
      And wait
     Then I should see "Recent accessibility issues"
     When I go to "/admin/reports/editoria11y/dismissals"
      And wait
     Then I should see "Dismissed accessibility alerts"
