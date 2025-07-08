Feature: Landing page (Paragraphs) - Add any paragraph types to the page
      As a logged in user with a permission to mange Landing pages
      I want to be able to add any paragraph type to the page
      So that the Landing page (Paragraphs) will show up having paragrpahs of different types

  @javascript @local @development @staging @production
  Scenario: Check Varbase Bootstrap Paragraphs settings
    Given I am a logged in user with the "webmaster" user
     When I go to "/admin/config/varbase/varbase-bootstrap-paragraphs"
      And wait
     Then I should see "Varbase Bootstrap Paragraphs settings"
      And I should see "Available CSS styles (classes) for Varbase Bootstrap Paragraphs"
      And I press "Save configuration"
      And wait 3s
     Then I should see "The configuration options have been saved."

  @javascript @local @development @staging @production
  Scenario: Check if a user with a permission to manage Landing page (Paragraphs) content type can add paragraphs of type Drupal Block
    Given I am a logged in user with the "Site admin" user
     When I go to "/node/add/landing_page"
      And wait
      And I fill in "Test Landing page Drupal Block" for "Title"
      And I fill in "Test Landing page description Drupal Block" for "Page description"
      And I wait for AJAX to finish
      And I wait for 1 second
      And I press "+ Add"
      And I wait for AJAX to finish
      And I wait for 1 second
      And I select the "bp_block" paragraph component
      And I wait for AJAX to finish
     Then I should see "Block"
     When I select "Site branding" from "Block"
      And wait
      And I select "published" from "edit-moderation-state-0-state--2"
      And I press the "Save as" button
      And wait
     Then I should see "Landing page (Paragraphs) Test Landing page Drupal Block has been created"

  @javascript @local @development @staging @production
  Scenario: Check if a user with a permission to manage Landing page (Paragraphs) content type can add paragraphs of type Columns Equal
    Given I am a logged in user with the "Site admin" user
     When I go to "/node/add/landing_page"
      And wait
      And I fill in "Test Landing page Columns (Equal)" for "Title"
      And I fill in "Test Landing page description Columns (Equal)" for "Page description"
      And I wait for AJAX to finish
      And I wait for 1 second
      And I press "+ Add"
      And I wait for AJAX to finish
      And I wait for 1 second
      And I select the "bp_columns" paragraph component
      And I wait for AJAX to finish
      And I select "published" from "edit-moderation-state-0-state--2"
      And I press the "Save as" button
      And wait
     Then I should see "Landing page (Paragraphs) Test Landing page Columns (Equal) has been created"

  @javascript @local @development @staging @production
  Scenario: Check if a user with a permission to manage Landing page (Paragraphs) content type can add paragraphs of type Columns Two Uneven
    Given I am a logged in user with the "Site admin" user
     When I go to "/node/add/landing_page"
      And wait
      And I fill in "Test Landing page Columns (Two Uneven)" for "Title"
      And I fill in "Test Landing page description Columns (Two Uneven)" for "Page description"
      And I wait for AJAX to finish
      And I wait for 1 second
      And I press "+ Add"
      And I wait for AJAX to finish
      And I wait for 1 second
      And I select the "bp_columns_two_uneven" paragraph component
      And I wait for AJAX to finish
      And I select "published" from "edit-moderation-state-0-state--2"
      And I press the "Save as" button
      And wait
     Then I should see "Landing page (Paragraphs) Test Landing page Columns (Two Uneven) has been created"

  @javascript @local @development @staging @production
  Scenario: Check if a user with a permission to manage Landing page (Paragraphs) content type can add paragraphs of type Rich Text
    Given I am a logged in user with the "Site admin" user
     When I go to "/node/add/landing_page"
      And wait
      And I fill in "Test Landing page Rich Text" for "Title"
      And I fill in "Test Landing page description Rich Text" for "Page description"
      And I wait for AJAX to finish
      And I wait for 1 second
      And I press "+ Add"
      And I wait for AJAX to finish
      And I wait for 1 second
      And I select the "bp_simple" paragraph component
      And I wait for AJAX to finish
     Then I should see "Components"
     When I fill in the rich text editor field "Text" with "Rich Text test"
      And I select "published" from "edit-moderation-state-0-state--2"
      And I press the "Save as" button
      And wait
     Then I should see "Landing page (Paragraphs) Test Landing page Rich Text has been created"
      And I should see "Rich Text test"

  @javascript @local @development @staging @production
  Scenario: Check if a user with a permission to manage Landing page (Paragraphs) content type can add paragraphs of type WebForm
    Given I am a logged in user with the "Site admin" user
     When I go to "/node/add/landing_page"
      And wait
      And I fill in "Test Landing page WebForm" for "Title"
      And I fill in "Test Landing page description WebForm" for "Page description"
      And I wait for AJAX to finish
      And I wait for 1 second
      And I press "+ Add"
      And I wait for AJAX to finish
      And I wait for 1 second
      And I select the "bp_webform" paragraph component
      And I wait for AJAX to finish
     Then I should see "Components"
     When I select "Contact" from "Webform"
      And wait
      And I select "published" from "edit-moderation-state-0-state--2"
      And I press the "Save as" button
      And wait
     Then I should see "Landing page (Paragraphs) Test Landing page WebForm has been created"
