Feature: Content Editing - Rich Text Editor - Input formats
As a logged in user with a permission to edit content
I want to be able to switch between input formats
So that can use different type of rich text editors.

  @javascript @local @development @staging @production
  Scenario: Check if Site Admin user can change the text format for the body of Basic page
    Given I am a logged in user with the "Site admin"
     When I go to "/node/add/page"
      And I wait
     Then I should see "Create Basic page"
      And I should see "Body"
      And I should not see "HTML Editor"

     When I select "full_html" from "body[0][format]"
      And I wait for AJAX to finish
     Then I should see the "#cke_edit-body-0-value" element in the "field body"

     When I select "basic_html" from "body[0][format]"
      And I wait for AJAX to finish
     Then I should see the "#cke_edit-body-0-value" element in the "field body"

     When I select "code_html" from "body[0][format]"
      And I wait for AJAX to finish
     Then I should see the "#edit-body-0-value" element in the "field body"
      And I should not see the "#cke_edit-body-0-value" element in the "field body"

  @javascript @local @development @staging @production
  Scenario: Check if Super Admin user can change the text format for the body of Basic page
    Given I am a logged in user with the "Super admin"
     When I go to "/node/add/page"
      And I wait
     Then I should see "Create Basic page"
      And I should see "Body"

     When I select "full_html" from "body[0][format]"
      And I wait for AJAX to finish
     Then I should see the "#cke_edit-body-0-value" element in the "field body"

     When I select "basic_html" from "body[0][format]"
      And I wait for AJAX to finish
     Then I should see the "#cke_edit-body-0-value" element in the "field body"

     When I select "code_html" from "body[0][format]"
      And I wait for AJAX to finish
     Then I should see the "#edit-body-0-value" element in the "field body"
      And I should not see the "#cke_edit-body-0-value" element in the "field body"
