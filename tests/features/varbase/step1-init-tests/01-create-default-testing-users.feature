Feature: Create default testing users.

# test_authenticated: { email: 'authenticated.test@vardot.com', password: 'dD.123123ddd' }
# test_editor: { email: 'editor.test@vardot.com', password: 'dD.123123ddd' }
# test_content_admin: { email: 'content.admin.test@vardot.com', password: 'dD.123123ddd' }
# test_seo_admin: { email: 'seo.admin.test@vardot.com', password: 'dD.123123ddd' }
# test_site_admin: { email: 'site.admin.test@vardot.com', password: 'dD.123123ddd' }
# test_super_admin: { email: 'super.admin.test@vardot.com', password: 'dD.123123ddd' }

  Background:
    Given I am a logged in user with the "webmaster" user

  @javascript @init @tools @local @development @staging
  Scenario: Create the test_authenticated user.
     When I go to "/admin/people/create"
      And I wait
     Then I should see "Add user"
     When I fill in "authenticated.test@vardot.com" for "Email address"
      And I fill in "test_authenticated" for "Username"
      And I press "Create new account"
      And I wait
     Then I should see "Created a new user account"

  @javascript @init @tools @local @development @staging
  Scenario: Set a password for the test_authenticated user.
     When I go to "/admin/people"
      And I wait
      And I fill in "test_authenticated" for "Name or email contains"
      And I press "Filter"
      And I wait
     Then I should see "test_authenticated"
     When I click "Edit" in the "test_authenticated" row
     Then I should see "test_authenticated"
     When I fill in "dD.123123ddd" for "Password"
      And I fill in "dD.123123ddd" for "Confirm password"
      And I press "Save"
      And I wait
     Then I should see "The changes have been saved."

  @javascript @init @tools @local @development @staging
  Scenario: Create the test_editor user.
     When I go to "/admin/people/create"
      And I wait
     Then I should see "Add user"
     When I check "Editor"
      And I fill in "editor.test@vardot.com" for "Email address"
      And I fill in "test_editor" for "Username"
      And I press "Create new account"
      And I wait
     Then I should see "Created a new user account"

   @javascript @init @tools @local @development @staging
   Scenario: Set a password for the test_editor user.
      When I go to "/admin/people"
       And I wait
       And I fill in "test_editor" for "Name or email contains"
       And I press "Filter"
       And I wait
      Then I should see "test_editor"
      When I click "Edit" in the "test_editor" row
      Then I should see "test_editor"
      When I fill in "dD.123123ddd" for "Password"
       And I fill in "dD.123123ddd" for "Confirm password"
       And I press "Save"
       And I wait
      Then I should see "The changes have been saved."

  @javascript @init @tools @local @development @staging
  Scenario: Create the test_content_admin user.
     When I go to "/admin/people/create"
      And I wait
     Then I should see "Add user"
     When I check "Content Admin"
      And I fill in "content.admin.test@vardot.com" for "Email address"
      And I fill in "test_content_admin" for "Username"
      And I press "Create new account"
      And I wait
     Then I should see "Created a new user account"

 @javascript @init @tools @local @development @staging
 Scenario: Set a password for the test_content_admin user.
    When I go to "/admin/people"
     And I wait
     And I fill in "test_content_admin" for "Name or email contains"
     And I press "Filter"
     And I wait
    Then I should see "test_content_admin"
    When I click "Edit" in the "test_content_admin" row
    Then I should see "test_content_admin"
    When I fill in "dD.123123ddd" for "Password"
     And I fill in "dD.123123ddd" for "Confirm password"
     And I press "Save"
     And I wait
    Then I should see "The changes have been saved."

  @javascript @init @tools @local @development @staging
  Scenario: Create the test_seo_admin user.
     When I go to "/admin/people/create"
      And I wait
     When I check "SEO Admin"
      And I fill in "seo.admin.test@vardot.com" for "Email address"
      And I fill in "test_seo_admin" for "Username"
      And I press "Create new account"
      And I wait
     Then I should see "Created a new user account"

 @javascript @init @tools @local @development @staging
 Scenario: Set a password for the test_seo_admin user.
    When I go to "/admin/people"
     And I wait
     And I fill in "test_seo_admin" for "Name or email contains"
     And I press "Filter"
     And I wait
    Then I should see "test_seo_admin"
    When I click "Edit" in the "test_seo_admin" row
    Then I should see "test_seo_admin"
    When I fill in "dD.123123ddd" for "Password"
     And I fill in "dD.123123ddd" for "Confirm password"
     And I press "Save"
     And I wait
    Then I should see "The changes have been saved."

  @javascript @init @tools @local @development @staging
  Scenario: Create the test_site_admin user.
     When I go to "/admin/people/create"
      And I wait
     Then I should see "Add user"
     When I check "Site Admin"
      And I fill in "site.admin.test@vardot.com" for "Email address"
      And I fill in "test_site_admin" for "Username"
      And I press "Create new account"
      And I wait
     Then I should see "Created a new user account"

 @javascript @init @tools @local @development @staging
 Scenario: Set a password for the test_site_admin user.
    When I go to "/admin/people"
     And I wait
     And I fill in "test_site_admin" for "Name or email contains"
     And I press "Filter"
     And I wait
    Then I should see "test_site_admin"
    When I click "Edit" in the "test_site_admin" row
    Then I should see "test_site_admin"
    When I fill in "dD.123123ddd" for "Password"
     And I fill in "dD.123123ddd" for "Confirm password"
     And I press "Save"
     And I wait
    Then I should see "The changes have been saved."

  @javascript @init @tools @local @development @staging
  Scenario: Create the test_super_admin user.
     When I go to "/admin/people/create"
      And I wait
     Then I should see "Add user"
     When I check "Super Admin"
      And I fill in "super.admin.test@vardot.com" for "Email address"
      And I fill in "test_super_admin" for "Username"
      And I press "Create new account"
      And I wait
     Then I should see "Created a new user account"

 @javascript @init @tools @local @development @staging
 Scenario: Set a password for the test_super_admin user.
    When I go to "/admin/people"
     And I wait
     And I fill in "test_super_admin" for "Name or email contains"
     And I press "Filter"
     And I wait
    Then I should see "test_super_admin"
    When I click "Edit" in the "test_super_admin" row
    Then I should see "test_super_admin"
    When I fill in "dD.123123ddd" for "Password"
     And I fill in "dD.123123ddd" for "Confirm password"
     And I press "Save"
     And I wait
    Then I should see "The changes have been saved."
