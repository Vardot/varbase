Feature: Website Base Requirements - Website Languages - All content translatable to all languages
      As a logged in user with a permission to translate content
      I want to be able to check if all content types are translatable
      So that I will be able to create a content then I will have the option to translate the content to other languages in the site

  @javascript @local @development @staging @production
  Scenario: Check if site admin can translate an existing English Basic Page to an Arabic version.
    Given I am a logged in user with the "Site admin" user
     When I go to "/node/add/page"
      And wait 2s
      And I fill in "Test English Basic page" for "Title"
      And I fill in the rich text editor field "Body" with "Test English Basic page body"
      And I select "en" from "Language"
      And I select "published" from "edit-moderation-state-0-state--2"
      And I press the "Save as" button
      And wait 2s
     Then I should see "Test English Basic page"
      And I should see "Test English Basic page body"
     When I open the top bar page actions menu
      And I wait for ajax to finish
     Then I should see "Translate"
     When I click "Translate"
      And wait
      And I should see "Test English Basic page"
     When I click "Add" in the "Arabic" row
      And wait 2s
      And I fill in "تجربة صفحة بسيطة عربية العنوان" for "edit-title-0-value"
      And I fill in the rich text editor field "edit-body-0-value" with "تجربة صفحة بسيطة عربية المحتوى"
      And I press the "حفظ كـ (this translation)" button
      And wait 2s
     Then I should see "تجربة صفحة بسيطة عربية العنوان"
     When I open the top bar page actions menu
      And I wait for ajax to finish
     Then I should see "ترجمة"
     When I click "ترجمة"
      And wait
     Then I should see "Test English Basic page"
