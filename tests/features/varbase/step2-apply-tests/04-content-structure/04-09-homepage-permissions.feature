Feature: Content Structure - Homepage Permissions with Landing Pages with Layout Builder
As a logged in user with a permission to manage Landing (Layout Builder) pages.
I want to be able to edit the page layouts sections and blocks
So that the homepage can be changed with permission in an easy way and be sure it will not deleted.

  @javascript @local @development @staging @production
  Scenario: Check that user Number 1 can see and have all options to edit the Homepage which built by the Landing page (Layout Builder)
    Given I am a logged in user with the "webmaster" user
     When I go to the homepage
      And I wait
     Then I should see "Welcome to Varbase"
      And I should see "Media Hero Slider"
      And I should see "Edit" in the "ul" element with the "class" attribute set to "nav nav-tabs primary"
      And I should see "Delete" in the "ul" element with the "class" attribute set to "nav nav-tabs primary"
      And I should see "Manage display" in the "ul" element with the "class" attribute set to "nav nav-tabs primary"
      And I should see "Layout" in the "ul" element with the "class" attribute set to "nav nav-tabs primary"
      And I should see "Revisions" in the "ul" element with the "class" attribute set to "nav nav-tabs primary"
      And I should see "Devel" in the "ul" element with the "class" attribute set to "nav nav-tabs primary"
      And I should see "Clone" in the "ul" element with the "class" attribute set to "nav nav-tabs primary"
      And I should see "Translate" in the "ul" element with the "class" attribute set to "nav nav-tabs primary"

  @javascript @local @development @staging @production
  Scenario: Check that an anonymous users can only see the Homepage which built by the Landing page (Layout Builder)
    Given I am an anonymous user
     When I go to the homepage
      And I wait
     Then I should see "Welcome to Varbase"
      And I should see "Media Hero Slider"
      And I should not see "Edit" in the "ul" element with the "class" attribute set to "nav nav-tabs primary"
      And I should not see "Delete" in the "ul" element with the "class" attribute set to "nav nav-tabs primary"
      And I should not see "Manage display" in the "ul" element with the "class" attribute set to "nav nav-tabs primary"
      And I should not see "Layout" in the "ul" element with the "class" attribute set to "nav nav-tabs primary"
      And I should not see "Revisions" in the "ul" element with the "class" attribute set to "nav nav-tabs primary"
      And I should not see "Devel" in the "ul" element with the "class" attribute set to "nav nav-tabs primary"
      And I should not see "Clone" in the "ul" element with the "class" attribute set to "nav nav-tabs primary"
      And I should not see "Translate" in the "ul" element with the "class" attribute set to "nav nav-tabs primary"

  @javascript @local @development @staging @production
  Scenario: Check that an authenticated user can not edit the Homepage which built by the Landing page (Layout Builder)
    Given I am a logged in user with the "test_authenticated" user
     When I go to the homepage
      And I wait
     Then I should see "Welcome to Varbase"
      And I should see "Media Hero Slider"
      And I should not see "Edit" in the "ul" element with the "class" attribute set to "nav nav-tabs primary"
      And I should not see "Delete" in the "ul" element with the "class" attribute set to "nav nav-tabs primary"
      And I should not see "Manage display" in the "ul" element with the "class" attribute set to "nav nav-tabs primary"
      And I should not see "Layout" in the "ul" element with the "class" attribute set to "nav nav-tabs primary"
      And I should not see "Revisions" in the "ul" element with the "class" attribute set to "nav nav-tabs primary"
      And I should not see "Devel" in the "ul" element with the "class" attribute set to "nav nav-tabs primary"
      And I should not see "Clone" in the "ul" element with the "class" attribute set to "nav nav-tabs primary"
      And I should not see "Translate" in the "ul" element with the "class" attribute set to "nav nav-tabs primary"

  @javascript @local @development @staging @production
  Scenario: Check that Editor users can edit the Homepage which built by the Landing page (Layout Builder)
    Given I am a logged in user with the "test_editor" user
     When I go to the homepage
      And I wait
     Then I should see "Welcome to Varbase"
      And I should see "Media Hero Slider"
      And I should see "Edit" in the "ul" element with the "class" attribute set to "nav nav-tabs primary"
      And I should not see "Delete" in the "ul" element with the "class" attribute set to "nav nav-tabs primary"
      And I should not see "Manage display" in the "ul" element with the "class" attribute set to "nav nav-tabs primary"
      And I should see "Layout" in the "ul" element with the "class" attribute set to "nav nav-tabs primary"
      And I should see "Revisions" in the "ul" element with the "class" attribute set to "nav nav-tabs primary"
      And I should not see "Devel" in the "ul" element with the "class" attribute set to "nav nav-tabs primary"
      And I should see "Clone" in the "ul" element with the "class" attribute set to "nav nav-tabs primary"
      And I should see "Translate" in the "ul" element with the "class" attribute set to "nav nav-tabs primary"

  @javascript @local @development @staging @production
  Scenario: Check that Content Admin users can edit the Homepage which built by the Landing page (Layout Builder)
    Given I am a logged in user with the "test_content_admin" user
     When I go to the homepage
      And I wait
     Then I should see "Welcome to Varbase"
      And I should see "Media Hero Slider"
      And I should see "Edit" in the "ul" element with the "class" attribute set to "nav nav-tabs primary"
      And I should not see "Delete" in the "ul" element with the "class" attribute set to "nav nav-tabs primary"
      And I should not see "Manage display" in the "ul" element with the "class" attribute set to "nav nav-tabs primary"
      And I should see "Layout" in the "ul" element with the "class" attribute set to "nav nav-tabs primary"
      And I should see "Revisions" in the "ul" element with the "class" attribute set to "nav nav-tabs primary"
      And I should not see "Devel" in the "ul" element with the "class" attribute set to "nav nav-tabs primary"
      And I should see "Clone" in the "ul" element with the "class" attribute set to "nav nav-tabs primary"
      And I should see "Translate" in the "ul" element with the "class" attribute set to "nav nav-tabs primary"

  @javascript @local @development @staging @production
  Scenario: Check that SEO Admin users can edit the Homepage which built by the Landing page (Layout Builder)
    Given I am a logged in user with the "test_seo_admin" user
     When I go to the homepage
      And I wait
     Then I should see "Welcome to Varbase"
      And I should see "Media Hero Slider"
      And I should see "Edit" in the "ul" element with the "class" attribute set to "nav nav-tabs primary"
      And I should not see "Delete" in the "ul" element with the "class" attribute set to "nav nav-tabs primary"
      And I should not see "Manage display" in the "ul" element with the "class" attribute set to "nav nav-tabs primary"
      And I should not see "Layout" in the "ul" element with the "class" attribute set to "nav nav-tabs primary"
      And I should see "Revisions" in the "ul" element with the "class" attribute set to "nav nav-tabs primary"
      And I should not see "Devel" in the "ul" element with the "class" attribute set to "nav nav-tabs primary"
      And I should not see "Clone" in the "ul" element with the "class" attribute set to "nav nav-tabs primary"
      And I should see "Translate" in the "ul" element with the "class" attribute set to "nav nav-tabs primary"

  @javascript @local @development @staging @production
  Scenario: Check that Site Admin users can edit the Homepage which built by the Landing page (Layout Builder)
    Given I am a logged in user with the "test_site_admin" user
     When I go to the homepage
      And I wait
     Then I should see "Welcome to Varbase"
      And I should see "Media Hero Slider"
      And I should see "Edit" in the "ul" element with the "class" attribute set to "nav nav-tabs primary"
      And I should see "Delete" in the "ul" element with the "class" attribute set to "nav nav-tabs primary"
      And I should not see "Manage display" in the "ul" element with the "class" attribute set to "nav nav-tabs primary"
      And I should see "Layout" in the "ul" element with the "class" attribute set to "nav nav-tabs primary"
      And I should see "Revisions" in the "ul" element with the "class" attribute set to "nav nav-tabs primary"
      And I should not see "Devel" in the "ul" element with the "class" attribute set to "nav nav-tabs primary"
      And I should see "Clone" in the "ul" element with the "class" attribute set to "nav nav-tabs primary"
      And I should see "Translate" in the "ul" element with the "class" attribute set to "nav nav-tabs primary"
