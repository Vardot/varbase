Feature: Support Requirements - Standard Support Navigation - Allow site super administrators to switch users and surf the site as that user.
As the site super admin
I want to be able to switch users and surf the site as that user with no password required
So that I can see what is the selected user is seeing in the site then switch back to my own user account at any time.

@javascript @check @local @development @staging @production
Scenario: Check if the webmaster user UID 1 can masquerade as any user.
  Given I am a logged in user with the "webmaster" user

  # Check if the webmaster user UID 1 can masquerade as an authenticated user.
   When I go to "/admin/people"
    And I wait
    And I fill in "test_authenticated" for "Name or email contains"
    And I press "Filter"
    And I wait
   Then I should see "test_authenticated"
   When I click "test_authenticated"
    And I wait
   Then I should see "Masquerade as test_authenticated"

  # Check if the webmaster user UID 1 can masquerade as an Editor user.
   When I go to "/admin/people"
    And I wait
    And I fill in "test_editor" for "Name or email contains"
    And I press "Filter"
    And I wait
   Then I should see "test_editor"
   When I click "test_editor"
    And I wait
   Then I should see "Masquerade as test_editor"

  # Check if the webmaster user UID 1 can masquerade as a content admin user.
   When I go to "/admin/people"
    And I wait
    And I fill in "test_content_admin" for "Name or email contains"
    And I press "Filter"
    And I wait
   Then I should see "test_content_admin"
   When I click "test_content_admin"
    And I wait
   Then I should see "Masquerade as test_content_admin"

  # Check if the webmaster user UID 1 can masquerade as a site admin user.
   When I go to "/admin/people"
    And I wait
    And I fill in "test_site_admin" for "Name or email contains"
    And I press "Filter"
    And I wait
   Then I should see "test_site_admin"
   When I click "test_site_admin"
    And I wait
   Then I should see "Masquerade as test_site_admin"

  # Check if the webmaster user UID 1 can masquerade as a super admin user.
   When I go to "/admin/people"
    And I wait
    And I fill in "test_super_admin" for "Name or email contains"
    And I press "Filter"
    And I wait
   Then I should see "test_super_admin"
   When I click "test_super_admin"
    And I wait
   Then I should see "Masquerade as test_super_admin"

@javascript @check @local @development @staging @production
Scenario: Check if a super admin user can masquerade as any user.
  Given I am a logged in user with the "test_super_admin" user

  # Check if a super admin user can masquerade as an authenticated user.
   When I go to "/admin/people"
    And I wait
    And I fill in "test_authenticated" for "Name or email contains"
    And I press "Filter"
    And I wait
   Then I should see "test_authenticated"
   When I click "test_authenticated"
    And I wait
   Then I should see "Masquerade as test_authenticated"

  # Check if a super admin user can masquerade as an Editor user.
   When I go to "/admin/people"
    And I wait
    And I fill in "test_editor" for "Name or email contains"
    And I press "Filter"
    And I wait
   Then I should see "test_editor"
   When I click "test_editor"
    And I wait
   Then I should see "Masquerade as test_editor"

  # Check if a super admin user can masquerade as a content admin user.
   When I go to "/admin/people"
    And I wait
    And I fill in "test_content_admin" for "Name or email contains"
    And I press "Filter"
    And I wait
   Then I should see "test_content_admin"
   When I click "test_content_admin"
    And I wait
   Then I should see "Masquerade as test_content_admin"

  # Check if a super admin user can masquerade as a site admin user.
   When I go to "/admin/people"
    And I wait
    And I fill in "test_site_admin" for "Name or email contains"
    And I press "Filter"
    And I wait
   Then I should see "test_site_admin"
   When I click "test_site_admin"
    And I wait
   Then I should see "Masquerade as test_site_admin"

  # Check if a super admin user can masquerade as the super user (UID 1) "webmaster".
   When I go to "/user/1"
    And I wait
   Then I should see "Masquerade as webmaster" 

@javascript @check @local @development @staging @production
Scenario: Check if a site admin user can NOT masquerade as any user.
  # Check if a super admin user can NOT masquerade as the super user (UID 1) "webmaster".
  Given I am a logged in user with the "test_site_admin" user
   When I go to "/user/1"
    And I wait
   Then I should not see "Masquerade as webmaster"

  # Check if a site admin user can NOT masquerade as an authenticated user.
   When I go to "/admin/people"
    And I wait
    And I fill in "test_authenticated" for "Name or email contains"
    And I press "Filter"
    And I wait
   Then I should see "test_authenticated"
   When I click "test_authenticated"
    And I wait
   Then I should not see "Masquerade as test_authenticated"

  # Check if a site admin user can NOT masquerade as an Editor user.
   When I go to "/admin/people"
    And I wait
    And I fill in "test_editor" for "Name or email contains"
    And I press "Filter"
    And I wait
   Then I should see "test_editor"
   When I click "test_editor"
    And I wait
   Then I should not see "Masquerade as test_editor"

  # Check if a site admin user can NOT masquerade as a content admin user.
   When I go to "/admin/people"
    And I wait
    And I fill in "test_content_admin" for "Name or email contains"
    And I press "Filter"
    And I wait
   Then I should see "test_content_admin"
   When I click "test_content_admin"
    And I wait
   Then I should not see "Masquerade as test_content_admin"

@javascript @check @local @development @staging @production
Scenario: Check if a content admin user can NOT masquerade as the super user (UID 1) "webmaster".
  Given I am a logged in user with the "test_content_admin" user
   When I go to "/user/1"
    And I wait
   Then I should not see "Masquerade as webmaster" 

@javascript @check @local @development @staging @production
Scenario: Check if an editor user can NOT masquerade as the super user (UID 1) "webmaster".
  Given I am a logged in user with the "test_editor" user
   When I go to "/user/1"
    And I wait
   Then I should not see "Masquerade as webmaster" 

@javascript @check @local @development @staging @production
Scenario: Check if an authenticated user can NOT masquerade as the super user (UID 1) "webmaster".
  Given I am a logged in user with the "test_authenticated" user
   When I go to "/user/1"
    And I wait
   Then I should not see "Masquerade as webmaster"