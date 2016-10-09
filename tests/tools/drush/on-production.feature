Feature: On development.
As a Developer
I want to be able to swich number of variables and module ON and OFF
So that will be able to work on my local Development machine.

# NOTE: Make sure that you commented variables with force override in
#      then local.settings.php file for Varbase 7.x-3.x

## On Production
#  https://bitbucket.org/snippets/Vardot/M7yd
# ------------------------------------------------------------
# drush vset error_level 0;
# drush vset preprocess_js 1;
# drush vset preprocess_css 1;
# drush vset cache 1;
# drush vset page_compression 1;
# drush vset block_cache 1;
#
# drush dis field_ui views_ui context_ui module_filter ds_ui dblog -y;

@api @tools @production
  Scenario: Set error_level to 0.
    Given I run drush "vset" "error_level 0"
     Then print last drush output
  
  @api @tools @production
  Scenario: Set preprocess_js to 1
    Given I run drush "vset" "preprocess_js 1"
     Then print last drush output
  
  @api @tools @production
  Scenario: Set preprocess_css to 1.
    Given I run drush "vset" "preprocess_css 1"
     Then print last drush output
  
  @api @tools @production
  Scenario: Set cache to 1.
    Given I run drush "vset" "cache 1"
     Then print last drush output
  
  @api @tools @production
  Scenario: Set page_compression to 1.
    Given I run drush "vset" "page_compression 1"
     Then print last drush output
  
  @api @tools @production
  Scenario: Set block_cache to 1.
    Given I run drush "vset" "block_cache 1"
     Then print last drush output
  
  @api @tools @production
  Scenario: Enable field_ui module.
    Given I run drush "dis" "field_ui -y"
     Then print last drush output
  
  @api @tools @production
  Scenario: Enable views_ui module.
    Given I run drush "dis" "views_ui -y"
     Then print last drush output
  
  @api @tools @production
  Scenario: Enable context_ui module.
    Given I run drush "dis" "context_ui -y"
     Then print last drush output
  
  @api @tools @production
  Scenario: Enable ds_ui module.
    Given I run drush "dis" "field_ui -y"
     Then print last drush output
  
  @api @tools @production
  Scenario: Enable module_filter module.
    Given I run drush "dis" "module_filter -y"
     Then print last drush output
  
  @api @tools @production
  Scenario: Enable dblog module.
    Given I run drush "dis" "dblog -y"
     Then print last drush output
  
