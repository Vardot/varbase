Feature: Create default testing users

# Normal user: { email: 'test.authenticated@vardot.com', password: 'dD.123123ddd' }
# Editor: { email: 'test.editor@vardot.com', password: 'dD.123123ddd' }
# Content admin: { email: 'test.content_admin@vardot.com', password: 'dD.123123ddd' }
# SEO admin: { email: 'test.seo_admin@vardot.com', password: 'dD.123123ddd' }
# Site admin: { email: 'test.site_admin@vardot.com', password: 'dD.123123ddd' }
# Super admin: { email: 'test.super_admin@vardot.com', password: 'dD.123123ddd' }

  Background:
    Given I am a logged in user with the "webmaster" user

  @javascript @init @tools @local @development @staging
  Scenario: Create the Normal user user
     When I go to "/admin/people/create"
      And I wait
     Then I should see "Add user"
     When I fill in "test.authenticated@vardot.com" for "Email address"
      And I fill in "Normal user" for "Username"
      And I fill in "dD.123123ddd" for "Password"
      And I fill in "dD.123123ddd" for "Confirm password"
      And I press "Create new account"
      And I wait
     Then I should not see "The name Normal user is already taken."

  @javascript @init @tools @local @development @staging
  Scenario: Create the Editor user
     When I go to "/admin/people/create"
      And I wait
     Then I should see "Add user"
     When I fill in "test.editor@vardot.com" for "Email address"
      And I fill in "Editor" for "Username"
      And I fill in "dD.123123ddd" for "Password"
      And I fill in "dD.123123ddd" for "Confirm password"
      And I check the box "Editor"
      And I press "Create new account"
      And I wait
     Then I should not see "The name Editor is already taken."

  @javascript @init @tools @local @development @staging
  Scenario: Create the Content admin user
     When I go to "/admin/people/create"
      And I wait
     Then I should see "Add user"
     When I fill in "test.content_admin@vardot.com" for "Email address"
      And I fill in "Content admin" for "Username"
      And I fill in "dD.123123ddd" for "Password"
      And I fill in "dD.123123ddd" for "Confirm password"
      And I check the box "Content Admin"
      And I press "Create new account"
      And I wait
     Then I should not see "The name Content admin is already taken."

  @javascript @init @tools @local @development @staging
  Scenario: Create the SEO admin user
     When I go to "/admin/people/create"
      And I wait
     Then I should see "Add user"
     When I fill in "test.seo_admin@vardot.com" for "Email address"
      And I fill in "SEO admin" for "Username"
      And I fill in "dD.123123ddd" for "Password"
      And I fill in "dD.123123ddd" for "Confirm password"
      And I check the box "SEO Admin"
      And I press "Create new account"
      And I wait
     Then I should not see "The name SEO admin is already taken."

  @javascript @init @tools @local @development @staging
  Scenario: Create the Site admin user
     When I go to "/admin/people/create"
      And I wait
     Then I should see "Add user"
     When I fill in "test.site_admin@vardot.com" for "Email address"
      And I fill in "Site admin" for "Username"
      And I fill in "dD.123123ddd" for "Password"
      And I fill in "dD.123123ddd" for "Confirm password"
      And I check the box "Site Admin"
      And I press "Create new account"
      And I wait
     Then I should not see "The name Site admin is already taken."

  @javascript @init @tools @local @development @staging
  Scenario: Create the Super admin user
     When I go to "/admin/people/create"
      And I wait
     Then I should see "Add user"
     When I fill in "test.super_admin@vardot.com" for "Email address"
      And I fill in "Super admin" for "Username"
      And I fill in "dD.123123ddd" for "Password"
      And I fill in "dD.123123ddd" for "Confirm password"
      And I check the box "Super Admin"
      And I press "Create new account"
      And I wait
     Then I should not see "The name Super admin is already taken."
