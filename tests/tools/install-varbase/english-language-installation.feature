Feature: Installation - Varbase - English installation.
As an Application site Builder
I want to be able to install Varbase for a selected client
So that I will be able to initiate the site with the default installation

  @javascript @tools @install @local @development
  Scenario: English installation for Varbase 8.x-8.x
    Given I go to "/core/install.php"
      And I wait
     Then I should see "Choose language"
     When I select "en" from "langcode"
      And I press "Save and continue"
      And I wait
     Then I should see "Database configuration"
     When I fill in "test_varbase4" for "Database name"
      And I fill in "root" for "Database username"
      And I fill in "123___" for "Database password"
      And I press "Save and continue"
      And I wait for the batch job to finish
     Then I should see "Configure site"
      And I wait
     When I fill in "Site name" with "Varbase4"
      # And I fill in "Site email address" with "noreply@vardot.com"
      # And I fill in "Username" with "webmaster"
      And I fill in "Password" with "dD.123123"
      And I fill in "Confirm password" with "dD.123123"
      # And I fill in "Email address" with "webmaster@vardot.com"
      And I uncheck the box "Check for updates automatically"
      And I press "Save and continue"
      And I wait for the batch job to finish
     Then I should see "Multilingual configuration"
     When I check the box "Enable multiple languages for this site"
     Then I should see "Please select your site's other language(s)"
     When I press "Save and continue"
      And I wait for the batch job to finish
     Then I should see "Extra components"
     When I check the box "Varbase development"
     When I press "Save and continue"
      And I wait for the batch job to finish
     Then I should see "Welcome to Varbase4"
