Feature: Installation - Varbase - Arabic installation.
As an Application site Builder
I want to be able to install Varbase for a selected client
So that I will be able to initiate the site with the default installation

  @javascript @tools @install @local @development
  Scenario: Arabic installation for Varbase 8.x-8.x
    Given I go to "/core/install.php"
      And I wait
     Then I should see "Choose language"
     When I select "ar" from "langcode"
      And I press "Save and continue"
      And I wait
     Then I should see "إعدادات قاعدة البيانات"
     When I fill in "test_varbase4" for "mysql[database]"
      And I fill in "root" for "mysql[username]"
      And I fill in "123___" for "mysql[password]"
      And I press "حفظ ومتابعة"
      And I wait for the batch job to finish
     Then I should see "ضبط الموقع"
      And I wait
     When I fill in "موقع عربي" for "اسم الموقع"
      # And I fill in "noreply@vardot.com" for "Site email address"
      # And I fill in "webmaster" for "اسم المستخدم"
      And I fill in "dD.123123ddd" for "كلمة المرور"
      And I fill in "dD.123123ddd" for "تأكيد كلمة المرور"
      # And I fill in "عنوان البريد الإلكتروني" with "webmaster@vardot.com"
      And I uncheck the box "Check for updates automatically"
      And I press "حفظ ومتابعة"
      And I wait for the batch job to finish
     Then I should see "Multilingual configuration"
     When I press "حفظ ومتابعة"
      And I wait for the batch job to finish
     Then I should see "Extra components"
     When I check the box "Varbase development"
      And I press "حفظ ومتابعة"
      And I wait for the batch job to finish
     Then I should see "Welcome to موقع عربي"
