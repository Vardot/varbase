Feature: Preview the site in a number of responsive devices
      As a site admin
      I want to be able to preview the look and feel of the site in a number of devices
      So that I can make sure that the site looks good in small and medium devices too.

  @javascript @check @local @development @staging @production
  Scenario: Check that an anonymous users can not access the responsive preview devices
    Given I am an anonymous user
     When I go to "/blog"
      And I wait 5s
     Then I should see "Blog"
      And I should see "Why Varbase? The Ultimate Drupal Distribution for Accelerated Development"
      And I should not see "Desktop" in the "button" element with the "data-responsive-preview-name" attribute set to "desktop"
      And I should not see "Mobile" in the "button" element with the "data-responsive-preview-name" attribute set to "mobile"

  @javascript @check @local @development @staging @production
  Scenario: Check that an authenticated user can not access the responsive preview devices
    Given I am a logged in user with the "Normal user" user
     When I go to "/blog"
      And I wait 5s
     Then I should see "Blog"
      And I should see "Why Varbase? The Ultimate Drupal Distribution for Accelerated Development"
      And I should not see "Desktop" in the "button" element with the "data-responsive-preview-name" attribute set to "desktop"
      And I should not see "Mobile" in the "button" element with the "data-responsive-preview-name" attribute set to "mobile"

  @javascript @check @local @development @staging @production
  Scenario: Check that Editor users can access the responsive preview devices
    Given I am a logged in user with the "Editor" user
     When I go to "/blog"
      And I wait 5s
     Then I should see "Blog"
      And I should see "Why Varbase? The Ultimate Drupal Distribution for Accelerated Development"
      And I should see "Desktop" in the "button" element with the "data-responsive-preview-name" attribute set to "desktop"
      And I should see "Mobile" in the "button" element with the "data-responsive-preview-name" attribute set to "mobile"
     When I press the "mobile" responsive preview device button
      And I wait for AJAX to finish
      And I wait 8s

  @javascript @check @local @development @staging @production
  Scenario: Check that Content Admin users can access the responsive preview devices
    Given I am a logged in user with the "Content admin" user
     When I go to "/blog"
      And I wait 5s
     Then I should see "Blog"
      And I should see "Why Varbase? The Ultimate Drupal Distribution for Accelerated Development"
      And I should see "Desktop" in the "button" element with the "data-responsive-preview-name" attribute set to "desktop"
      And I should see "Mobile" in the "button" element with the "data-responsive-preview-name" attribute set to "mobile"
     When I press the "mobile" responsive preview device button
      And I wait for AJAX to finish
      And I wait 8s

  @javascript @check @local @development @staging @production
  Scenario: Check that SEO Admin users can access the responsive preview devices
    Given I am a logged in user with the "SEO admin" user
     When I go to "/blog"
      And I wait 5s
     Then I should see "Blog"
      And I should see "Why Varbase? The Ultimate Drupal Distribution for Accelerated Development"
      And I should see "Desktop" in the "button" element with the "data-responsive-preview-name" attribute set to "desktop"
      And I should see "Mobile" in the "button" element with the "data-responsive-preview-name" attribute set to "mobile"
     When I press the "mobile" responsive preview device button
      And I wait for AJAX to finish
      And I wait 8s

  @javascript @check @local @development @staging @production
  Scenario: Check that Site Admin users can access the responsive preview devices
    Given I am a logged in user with the "Site admin" user
     When I go to "/blog"
      And I wait 5s
     Then I should see "Blog"
      And I should see "Why Varbase? The Ultimate Drupal Distribution for Accelerated Development"
      And I should see "Desktop" in the "button" element with the "data-responsive-preview-name" attribute set to "desktop"
      And I should see "Mobile" in the "button" element with the "data-responsive-preview-name" attribute set to "mobile"
     When I press the "mobile" responsive preview device button
      And I wait for AJAX to finish
      And I wait 8s

  @javascript @check @local @development @staging @production
  Scenario: Check that user Number 1 can access the responsive preview devices and configure devices
    Given I am a logged in user with the "webmaster" user
     When I go to "/blog"
      And I wait 5s
     Then I should see "Blog"
      And I should see "Why Varbase? The Ultimate Drupal Distribution for Accelerated Development"
      And I should see "Desktop" in the "button" element with the "data-responsive-preview-name" attribute set to "desktop"
      And I should see "Mobile" in the "button" element with the "data-responsive-preview-name" attribute set to "mobile"
     When I press the "mobile" responsive preview device button
      And I wait for AJAX to finish
      And I wait 8s
