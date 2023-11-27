Feature: Website Base Requirements - Website Languages - All content translatable to all languages
As a logged in user with a permission to translate content
I want to be able to check if all content types are translatable
So that I will be able to create a content then I will have the option to translate the content to other languages in the site

# Run the following Gherkin Features to add Arabic language.
# ../../../bin/behat tests/features/varbase/step1-init-tests/2-add-arabic.feature

# Run the following Gherkin Features After you finish work
# So that you can delete Arabic language.
#
# ../../../bin/behat tests/features/varbase/step3-cleanup-tests/2-delete-arabic.feature

  @javascript @local @development @staging @production
  Scenario: Check if site admin can translate an existing English Basic Page to an Arabic version.
    Given I am a logged in user with the "Site admin" user
     When I go to "/node/add/page"
      And I wait
      And I fill in "Test English Basic page" for "Title"
      And I fill in the rich text editor field "Body" with "Test English Basic page body"
      And I select "en" from "Language"
      And I select "published" from "edit-moderation-state-0-state"
      And I press the "Save" button
      And I wait
     Then I should see "Test English Basic page"
      And I should see "Test English Basic page body"
     When I click "Tasks"
      And I wait for ajax to finish
     Then I should see "Translate"
     When I click "Translate" in the "a" element with the "class" attribute set to "moderation-sidebar-link button"
      And I wait for ajax to finish
     Then I should see "Translate"
      And I should see "View all translations"
     When I click "Create translation"
      And I wait
      And I fill in "تجربة صفحة بسيطة عربية العنوان" for "edit-title-0-value"
      And I fill in the rich text editor field "edit-body-0-value" with "تجربة صفحة بسيطة عربية المحتوى"
      And I press the "edit-submit" button
      And I wait
     Then I should see "تجربة صفحة بسيطة عربية العنوان"
     When I click "المهام"
      And I wait for ajax to finish
     Then I should see "ترجمة"
     When I click "ترجمة" in the "a" element with the "class" attribute set to "moderation-sidebar-link button"
      And I wait for ajax to finish
     Then I should see "ترجمة"
      And I should see "View all translations"
      And I wait
     When I click "View all translations"
      And I wait
     Then I should see "Test English Basic page"
