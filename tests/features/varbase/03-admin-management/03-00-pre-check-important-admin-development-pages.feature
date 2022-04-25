Feature: Pre-check important administrator and development pages
As a site admin user
I want to be able to make sure that all admin and development tools are working
So that I can use them after the install or update.

  Background:
    Given I am a logged in user with the "webmaster" user

  @javascript @check @local @development @staging @production
  Scenario: Check the content page
     When I go to "/admin/content"
      And I wait
     Then I should see "Content"

  @javascript @check @local @development @staging @production
  Scenario: Check the Homepage content with Layout Builder
     When I go to "/admin/content"
      And I wait
     Then I should see "Homepage"
      And I should see "Landing page (Layout Builder)" in the "Homepage" row

   @javascript @check @local @development @staging @production
   Scenario: Check Files admin page
      When I go to "/admin/content/files"
       And I wait
      Then I should see "Files"

   @javascript @check @local @development @staging @production
   Scenario: Check Media Grid admin page
      When I go to "/admin/content/media"
       And I wait
      Then I should see "Media"

   @javascript @check @local @development @staging @production
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

  @javascript @check @local @development @staging @production
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

  @javascript @check @local @development @staging @production
  Scenario: Check the structure page
     When I go to "/admin/structure/page_manager"
      And I wait
     Then I should see "Pages"
      And I should see "Total Control dashboard"

  @javascript @check @local @development @staging @production
  Scenario: Check the views page
     When I go to "/admin/structure/views"
      And I wait
     Then I should see "Views"
      And I should see "Browser"
      And I should see "Media Hero Slider"

  @javascript @check @local @development @staging @production
  Scenario: Check the Appearance page
     When I go to "/admin/appearance"
      And I wait
     Then I should see "Appearance"
      And I should see "Vartheme"
      And I should see "(Bootstrap 4 - SASS)"
      And I should see "Claro"
      And I should see "Bootstrap"
      And I should see "Bootstrap Barrio"
      And I should see "Vartheme Claro"

   @javascript @check @local @development @staging @production
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

   @javascript @check @local @development @staging @production
   Scenario: Check Varbase update instructions page
      When I go to "/admin/config/development/update-helper"
       And I wait
      Then I should see "Varbase update instructions"
       And I should see "100%"
       And I should not see "Pending updates"

   @javascript @check @local @development @staging
   Scenario: Check Varbase default Reroute Email settings
      When I go to "/admin/config/development/reroute_email"
       And I wait
      Then I should see "Reroute Email"
       And the "edit-enable" checkbox is checked
       And I should see "dev-catchall@vardot.com" value in the "edit-address" input element
       And I should see "*@vardot.com" value in the "edit-allowed" input element
       And the "edit-description" checkbox is checked
       And the "edit-message" checkbox is checked

   @javascript @check @local @development @staging
   Scenario: Check Varbase password suggestions settings
      When I go to "admin/config/system/varbase/varbase-security/password-suggestions-settings"
       And I wait
      Then I should see "Password Suggestions settings"
       And I should see "Passwords match:" value in the "edit-confirmtitle" input element
       And I should see "yes" value in the "edit-confirmsuccess" input element
       And I should see "no" value in the "edit-confirmfailure" input element
       And I should see "Password strength:" value in the "edit-strengthtitle" input element
       And I should see "Recommendations to make your password stronger:" value in the "edit-hasweaknesses" input element
       And I should see "Make it at least 8 characters" value in the "edit-tooshort" input element
       And I should see "Add lowercase letters" value in the "edit-addlowercase" input element
       And I should see "Add uppercase letters" value in the "edit-adduppercase" input element
       And I should see "Add numbers" value in the "edit-addnumbers" input element
       And I should see "Add punctuation" value in the "edit-addpunctuation" input element
       And I should see "Make it different from your username" value in the "edit-sameasusername" input element
       And I should see "Weak" value in the "edit-weak" input element
       And I should see "Fair" value in the "edit-fair" input element
       And I should see "Good" value in the "edit-good" input element
       And I should see "Strong" value in the "edit-strong" input element
   
   @javascript @check @local @development @staging
   Scenario: Check password policy constraints
      When I go to "admin/config/security/password-policy/default_policy/constraint"
       And I wait
      Then I should see "Configure Constraints"
       And I should see "Number of allowed repeated passwords: 0"
       And I should see "Password must not contain the user's username."
       And I should see "Password character length of at least 8 characters"
       And I should see "Minimum password character types: 4"
       And I should see "Password must contain 1 special character"
       And I should see "Password must contain 1 numeric character"
       And I should see "Password must contain 1 uppercase character"
       And I should see "Password must contain 1 lowercase character"
