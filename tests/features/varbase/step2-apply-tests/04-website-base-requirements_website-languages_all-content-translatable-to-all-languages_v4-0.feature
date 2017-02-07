Feature: Website Base Requirements - Website Languages - All content translatable to all languages
As a logged in user with a permission to translate content
I want to be able to check if all content types are translatable
So that I will be able to create a content then I will have the option to translate the content to other languages in the site

# Run the following Gherkin Features to add Arabic and French languages.
# bin/behat features/varbase/step1-init-tests/2-add-arabic.feature
# bin/behat features/varbase/step1-init-tests/3-add-french.feature

# Run the following Gherkin Features After you finish work
# So that you can delete Arabic and French languages.
#
# bin/behat features/varbase/step3-cleanup-tests/2-delete-arabic.feature
# bin/behat features/varbase/step3-cleanup-tests/3-delete-french.feature

  @javascript @local @development @staging @production
  Scenario: Check if site admin can translate an existing English Basic Page
  to an Arabic version.
    Given I am a logged in user with the "test_site_admin" user
     When I go to "/node/add/page"
      And I wait
      And I fill in "Test English Basic page" for "Title"
      And I fill in the rich text editor field "Body" with "Test English Basic page body"
      And I select "en" from "Language"
      And I press the "Save" button
      And I wait
     Then I should see "Test English Basic page"
      And I should see "Edit"
      And I should see "Test English Basic page body"
      And I should see "Translate"
     When I click "Translate"
      And I wait
     Then I should see "Translations of Test English Basic page"
      And I should see "Not translated" in the "Arabic" row
     When I click "Add" in the "Arabic" row
      And I wait
     Then I should see "Create عربية translation of Test English Basic page"
     When I fill in "تجربة صفحة بسيطة عربية العنوان" for "العنوان"
      And I fill in the rich text editor field "المتن" with "تجربة صفحة بسيطة عربية المحتوى"
      And I press "Save"
      And I wait
     Then I should see "تجربة صفحة بسيطة عربية العنوان"
     When I click "Translate"
      And I wait
     Then I should see "Test English Basic page"
      And I should see "Not translated" in the "French" row
     When I click "Add" in the "French" row
      And I wait
     Then I should see "Traduire e en Français"
     When I fill in "La page test d'anglais de base" for "Titre"
      And I fill in the rich text editor field "Corps" with "Corps de la page test d'anglais de base"
      And I press "Save"
      And I wait
     Then I should see "La page test d'anglais de base"
     When I click "Translate"
      And I wait
     Then I should see "Test English Basic page"

  
