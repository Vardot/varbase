Feature: Pre-check important administrator and development pages.
As a site admin user
I want to be able to make sure that all admin and development tools are working
So that I can use them after the install or update.

  Background:
    Given I am a logged in user with the "webmaster" user

  @check @local @development @staging @production
  Scenario: Check the content page.
     When I go to "/admin/content"
      And I wait
     Then I should see "Content"

  @check @local @development @staging @production
  Scenario: Check the structure page.
     When I go to "/admin/structure"
      And I wait
     Then I should see "Block layout"
      And I should see "Content types"
      And I should see "Display Suite"
      And I should see "Display modes"
      And I should see "Entityqueues"
      And I should see "Media types"
      And I should see "Menu position rules"
      And I should see "Menus"
      And I should see "Pages"
      And I should see "Paragraph types"
      And I should see "Taxonomy"
      And I should see "Views"
      And I should see "Webforms"

  @check @local @development @staging @production
  Scenario: Check the structure page.
     When I go to "/admin/structure/page_manager"
      And I wait
     Then I should see "Pages"
      And I should see "Homepage"
      And I should see "Total Control dashboard"

  @check @local @development @staging @production
  Scenario: Check the Page Manager main page.
     When I go to "/admin/structure/page_manager"
      And I wait
     Then I should see "Pages"
      And I should see "Homepage"
      And I should see "Total Control dashboard"

  @check @local @development @staging @production
  Scenario: Check the views page.
     When I go to "/admin/structure/views"
      And I wait
     Then I should see "Views"
      And I should see "Browser"
      And I should see "Media Hero Slider"

  @check @local @development @staging @production
  Scenario: Check the Appearance page.
     When I go to "/admin/appearance"
      And I wait
     Then I should see "Appearance"
      And I should see "Vartheme"
      And I should see "Adminimal"
      And I should see "Bootstrap"
      And I should see "Vartheme Admin"

   @check @local @development @staging @production
   Scenario: Check active type of media types.
      When I go to "media/add"
       And I wait
      Then I should see "File"
       And I should see "Image"
       And I should see "Video"
       And I should see "Remote video"
       And I should see "Audio"
       And I should see "Instagram"
       And I should see "Tweet"
