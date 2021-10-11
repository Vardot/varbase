Feature: Pre-check important administrator and development pages
As a site admin user
I want to be able to make sure that all admin and development tools are working
So that I can use them after the install or update.

  Background:
    Given I am a logged in user with the "webmaster" user

  @check @local @development @staging @production
  Scenario: Check the content page
     When I go to "/admin/content"
      And I wait
     Then I should see "Content"

  @check @local @development @staging @production
  Scenario: Check the Homepage content with Layout Builder
     When I go to "/admin/content"
      And I wait
     Then I should see "Homepage"
      And I should see "Landing page (Layout Builder)" in the "Homepage" row

   @check @local @development @staging @production
   Scenario: Check Files admin page
      When I go to "/admin/content/files"
       And I wait
      Then I should see "Files"

   @check @local @development @staging @production
   Scenario: Check Media Grid admin page
      When I go to "/admin/content/media"
       And I wait
      Then I should see "Media"

   @check @local @development @staging @production
   Scenario: Check Media Table admin page
      When I go to "/admin/content/media"
       And I wait
      Then I should see "Media"
       And I should see "Thumbnail"
       And I should see "Cover Image"
       And I should see "Media name"
       And I should see "Type"
       And I should see "Author"
       And I should see "Status"
       And I should see "Updated"
       And I should see "Operations"

  @check @local @development @staging @production
  Scenario: Check the structure page
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
  Scenario: Check the structure page
     When I go to "/admin/structure/page_manager"
      And I wait
     Then I should see "Pages"
      And I should see "Total Control dashboard"

  @check @local @development @staging @production
  Scenario: Check the views page
     When I go to "/admin/structure/views"
      And I wait
     Then I should see "Views"
      And I should see "Browser"
      And I should see "Media Hero Slider"

  @check @local @development @staging @production
  Scenario: Check the Appearance page
     When I go to "/admin/appearance"
      And I wait
     Then I should see "Appearance"
      And I should see "Vartheme"
      And I should see "Vartheme (Bootstrap 4 - SASS)"
      And I should see "Claro"
      And I should see "Bootstrap"
      And I should see "Bootstrap Barrio"
      And I should see "Vartheme Claro"

   @check @local @development @staging @production
   Scenario: Check active type of media types
      When I go to "/media/add"
       And I wait
      Then I should see "File"
       And I should see "Image"
       And I should see "Video"
       And I should see "Remote video"
       And I should see "Audio"
       And I should see "Instagram"
       And I should see "Tweet"

   @check @local @development @staging @production
   Scenario: Check Varbase update instructions page
      When I go to "/admin/config/development/update-helper"
       And I wait
      Then I should see "Varbase update instructions"
       And I should see "100%"
       And I should not see "Pending updates"