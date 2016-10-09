Feature: Clear flood.
As a Developer
I want to be able to clear the flood table when I see the following message
"Sorry, there have been more than 5 failed login attempts for this account.
It is temporarily blocked. Try again later or request a new password."
So that will be able to let the blocked user login to the site

  @api @tools @local @development
  Scenario: Delete all recourds in the flood table.
    Given I run drush "sqlq 'DELETE FROM flood'"
     Then print last drush output
  
