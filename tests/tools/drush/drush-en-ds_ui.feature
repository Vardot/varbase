Feature: Enable Display suite ui module.

@api @tools @local @development
  Scenario: Enable ds_ui.
    Given I run drush "en" "ds_ui -y"
     Then print last drush output
  
