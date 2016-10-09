Feature: Delete default testing users.

# test_authenticated: { email: 'authenticated.test@vardot.com', password: 'dD.123123ddd' }
# test_editor: { email: 'editor.test@vardot.com', password: 'dD.123123ddd' }
# test_content_admin: { email: 'content.admin.test@vardot.com', password: 'dD.123123ddd' }
# test_site_admin: { email: 'site.admin.test@vardot.com', password: 'dD.123123ddd' }
# test_super_admin: { email: 'super.admin.test@vardot.com', password: 'dD.123123ddd' }

  Background:
    Given I am a logged in user with the "webmaster" user

  @javascript @cleanup @tools @local @development @staging
  Scenario: Delete the test_authenticated user.
     When I go to "/admin/people"
      And I wait
      And I fill in "test_authenticated" for "Name or email contains"
      And I press "Filter"
      And I wait
     Then I should see "test_authenticated"
     When I click "test_authenticated"
      And I wait
     Then I should see "test_authenticated"
     When I click "Edit"
      And I wait
     Then I should see "test_authenticated"
     When I press "Cancel account"
      And I wait
     Then I should see "Are you sure you want to cancel the account test_authenticated?"
     When I select the radio button "Delete the account and its content."
      And I press "Cancel account"
      And I wait for the batch job to finish
     Then I should see "test_authenticated has been deleted."

  @javascript @cleanup @tools @local @development @staging
  Scenario: Delete the test_editor user.
     When I go to "/admin/people"
      And I wait
      And I fill in "test_editor" for "Name or email contains"
      And I press "Filter"
      And I wait
     Then I should see "test_editor"
     When I click "test_editor"
      And I wait
     Then I should see "test_editor"
     When I click "Edit"
      And I wait
     Then I should see "test_editor"
     When I press "Cancel account"
      And I wait
     Then I should see "Are you sure you want to cancel the account test_editor?"
     When I select the radio button "Delete the account and its content."
      And I press "Cancel account"
      And I wait for the batch job to finish
     Then I should see "test_editor has been deleted."

  @javascript @cleanup @tools @local @development @staging @production
  Scenario: Delete the test_content_admin user.
     When I go to "/admin/people"
      And I fill in "test_content_admin" for "Name or email contains"
      And I press "Filter"
      And I wait
     Then I should see "test_content_admin"
     When I click "test_content_admin"
      And I wait
     Then I should see "test_content_admin"
     When I click "Edit"
      And I wait
     Then I should see "test_content_admin"
     When I press "Cancel account"
      And I wait
     Then I should see "Are you sure you want to cancel the account test_content_admin?"
     When I select the radio button "Delete the account and its content."
      And I press "Cancel account"
      And I wait for the batch job to finish
     Then I should see "test_content_admin has been deleted."

  @javascript @cleanup @tools @local @development @staging @production
  Scenario: Delete the test_site_admin user.
     When I go to "/admin/people"
      And I wait
      And I fill in "test_site_admin" for "Name or email contains"
      And I press "Filter"
      And I wait
     Then I should see "test_site_admin"
     When I click "test_site_admin"
      And I wait
     Then I should see "test_site_admin"
     When I click "Edit"
      And I wait
     Then I should see "test_site_admin"
     When I press "Cancel account"
      And I wait
     Then I should see "Are you sure you want to cancel the account test_site_admin?"
     When I select the radio button "Delete the account and its content."
      And I press "Cancel account"
      And I wait for the batch job to finish
     Then I should see "test_site_admin has been deleted."

  @javascript @cleanup @tools @local @development @staging @production
  Scenario: Delete the test_super_admin user.
     When I go to "/admin/people"
      And I wait
      And I fill in "test_super_admin" for "Name or email contains"
      And I press "Filter"
      And I wait
     Then I should see "test_super_admin"
     When I click "test_super_admin"
      And I wait
     Then I should see "test_super_admin"
     When I click "Edit"
      And I wait
     Then I should see "test_super_admin"
     When I press "Cancel account"
      And I wait
     Then I should see "Are you sure you want to cancel the account test_super_admin?"
     When I select the radio button "Delete the account and its content."
      And I press "Cancel account"
      And I wait for the batch job to finish
     Then I should see "test_super_admin has been deleted."
