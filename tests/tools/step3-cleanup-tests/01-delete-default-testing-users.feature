Feature: Delete default testing users

# Normal user: { email: 'test.authenticated@vardot.com', password: 'dD.123123ddd' }
# Editor: { email: 'test.editor@vardot.com', password: 'dD.123123ddd' }
# Content admin: { email: 'test.content_admin@vardot.com', password: 'dD.123123ddd' }
# SEO admin: { email: 'test.seo_admin@vardot.com', password: 'dD.123123ddd' }
# Site admin: { email: 'test.site_admin@vardot.com', password: 'dD.123123ddd' }
# Super admin: { email: 'test.super_admin@vardot.com', password: 'dD.123123ddd' }

  @javascript @cleanup @tools @local @development @staging
  Scenario: Delete default testing users.
    Given I am a logged in user with the "webmaster" user
     When I go to "/admin/people"
      And I wait
     Then I should see "People"
     When I check the box "Normal user"
      And I check the box "Editor"
      And I check the box "Content admin"
      And I check the box "SEO admin"
      And I check the box "Site admin"
      And I check the box "Super admin"
      And I select "Cancel the selected user accounts" from "action"
     When I press "Apply to selected items"
      And I wait
      And I select the radio button "Delete the account and its content. This action cannot be undone."
      And I press "Apply"
      And I wait 15s
     Then I should see "Action processing results: (6)."