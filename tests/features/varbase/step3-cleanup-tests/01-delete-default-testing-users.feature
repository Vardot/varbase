Feature: Delete default testing users

# test_authenticated: { email: 'authenticated.test@vardot.com', password: 'dD.123123ddd' }
# test_editor: { email: 'editor.test@vardot.com', password: 'dD.123123ddd' }
# test_content_admin: { email: 'content.admin.test@vardot.com', password: 'dD.123123ddd' }
# test_seo_admin: { email: 'seo.admin.test@vardot.com', password: 'dD.123123ddd' }
# test_site_admin: { email: 'site.admin.test@vardot.com', password: 'dD.123123ddd' }
# test_super_admin: { email: 'super.admin.test@vardot.com', password: 'dD.123123ddd' }

  @javascript @cleanup @tools @local @development @staging
  Scenario: Delete default testing users.
    Given I am a logged in user with the "webmaster" user
     When I go to "/admin/people"
      And I wait
     Then I should see "People"
     When I check the box "test_authenticated"
      And I check the box "test_editor"
      And I check the box "test_content_admin"
      And I check the box "test_seo_admin"
      And I check the box "test_site_admin"
      And I check the box "test_super_admin"
      And I select "Cancel the selected user accounts" from "action"
     When I press "Apply to selected items"
      And I wait
      And I select the radio button "Delete the account and its content."
      And I press "Apply"
      And I wait 15s
     Then I should see "Action processing results: (6)."