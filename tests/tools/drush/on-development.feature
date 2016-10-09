Feature: On development.
As a Developer
I want to be able to swich number of variables and module ON and OFF
So that will be able to work on my local Development machine.

# NOTE: Make sure that you commented variables with force override in
#      then local.settings.php file for Varbase 7.x-3.x

## On Development
# https://bitbucket.org/snippets/Vardot/M7yd
# ------------------------------------------------------------
# drush vset error_level 2;
# drush vset preprocess_js 0;
# drush vset preprocess_css 0;
# drush vset cache 0;
# drush vset page_compression 0;
# drush vset block_cache 0;
# drush vset file_temporary_path '/tmp';
# drush en field_ui views_ui context_ui ds_ui module_filter dblog -y;

  @api @tools @local @development
  Scenario: Set error_level to 2.
    Given I run drush "vset" "error_level 2"
     Then print last drush output
  
  @api @tools @local @development
  Scenario: Set preprocess_js to 0.
    Given I run drush "vset" "preprocess_js 0"
     Then print last drush output
  
  @api @tools @local @development
  Scenario: Set preprocess_css to 0.
    Given I run drush "vset" "vset preprocess_css 0"
     Then print last drush output
  
  @api @tools @local @development
  Scenario: Set cache to 0.
    Given I run drush "vset" "cache 0"
     Then print last drush output
  
  @api @tools @local @development
  Scenario: Set page_compression to 0.
    Given I run drush "vset" "page_compression 0"
     Then print last drush output
  
  @api @tools @local @development
  Scenario: Set block_cache to 0.
    Given I run drush "vset" "block_cache 0"
     Then print last drush output
  
  @api @tools @local @development
  Scenario: Set file_temporary_path to '/tmp'.
    Given I run drush "vset" "file_temporary_path '/tmp'"
     Then print last drush output
  
  @api @tools @local @development
  Scenario: Enable field_ui.
    Given I run drush "en" "field_ui -y"
     Then print last drush output
  
  @api @tools @local @development
  Scenario: Enable views_ui.
    Given I run drush "en" "views_ui -y"
     Then print last drush output
  
  @api @tools @local @development
  Scenario: Enable context_ui.
    Given I run drush "en" "context_ui -y"
     Then print last drush output
  
  @api @tools @local @development
  Scenario: Enable ds_ui.
    Given I run drush "en" "field_ui -y"
     Then print last drush output
  
  @api @tools @local @development
  Scenario: Enable module_filter.
    Given I run drush "en" "module_filter -y"
     Then print last drush output
  
  @api @tools @local @development
  Scenario: Enable dblog.
    Given I run drush "en" "dblog -y"
     Then print last drush output
  
