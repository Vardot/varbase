Feature: Preview the site in a number of responsive devices
      As a site admin
      I want to be able to preview the look and feel of the site in a number of devices
      So that I can make sure that the site looks good in small and medium devices too.

  @javascript @check @local @development @staging @production
  Scenario: Check that an anonymous users can not access the responsive preview devices
    Given I am an anonymous user
     When I go to "/blog"
      And wait 3s
     Then I should see "Blog"
      And I should not see "Layout preview" in the "button" element with the "title" attribute set to "Preview page layout"

  @javascript @check @local @development @staging @production
  Scenario: Check that an authenticated user can not access the responsive preview devices
    Given I am a logged in user with the "Normal user" user
     When I go to "/blog"
      And wait 3s
     Then I should see "Blog"
      And I should not see "Layout preview" in the "button" element with the "title" attribute set to "Preview page layout"

  @javascript @check @local @development @staging @production
  Scenario: Check that Editor users can access the responsive preview devices
    Given I am a logged in user with the "Editor" user
     When I go to "/blog"
      And wait 3s
     Then I should see "Blog"
      And I should see "Layout preview" in the "button" element with the "title" attribute set to "Preview page layout"
     When I press "Preview page layout"
     Then I should see "iPhone 15"
      And I should see "iPhone 15 Pro Max"
      And I should see "Galaxy Tab S9 Ultra"
      And I should see "iPad Pro"
      And I should see "Samsung Galaxy S23 Ultra"
      And I should see "Pixel 7"
      And I should not see "Configure devices"
     When I press "iPhone 15"
     Then I should see "iPhone 15" in the "span" element with the "class" attribute set to "responsive-preview-device-label-text"
     When I go to "/blog"
      And wait 3s
     Then I should see "Blog"
     When I press "Preview page layout"
     Then I should see "iPad Pro"
     When I press "iPad Pro"
     Then I should see "iPad Pro" in the "span" element with the "class" attribute set to "responsive-preview-device-label-text"

  @javascript @check @local @development @staging @production
  Scenario: Check that Content Admin users can access the responsive preview devices
    Given I am a logged in user with the "Content admin" user
     When I go to "/blog"
      And wait 3s
     Then I should see "Blog"
      And I should see "Layout preview" in the "button" element with the "title" attribute set to "Preview page layout"
     When I press "Preview page layout"
     Then I should see "iPhone 15"
      And I should see "iPhone 15 Pro Max"
      And I should see "Galaxy Tab S9 Ultra"
      And I should see "iPad Pro"
      And I should see "Samsung Galaxy S23 Ultra"
      And I should see "Pixel 7"
      And I should not see "Configure devices"
     When I press "iPhone 15"
     Then I should see "iPhone 15" in the "span" element with the "class" attribute set to "responsive-preview-device-label-text"
     When I go to "/blog"
      And wait 3s
     Then I should see "Blog"
     When I press "Preview page layout"
     Then I should see "iPad Pro"
     When I press "iPad Pro"
     Then I should see "iPad Pro" in the "span" element with the "class" attribute set to "responsive-preview-device-label-text"

  @javascript @check @local @development @staging @production
  Scenario: Check that SEO Admin users can access the responsive preview devices
    Given I am a logged in user with the "SEO admin" user
     When I go to "/blog"
      And wait 3s
     Then I should see "Blog"
      And I should see "Layout preview" in the "button" element with the "title" attribute set to "Preview page layout"
     When I press "Preview page layout"
     Then I should see "iPhone 15"
      And I should see "iPhone 15 Pro Max"
      And I should see "Galaxy Tab S9 Ultra"
      And I should see "iPad Pro"
      And I should see "Samsung Galaxy S23 Ultra"
      And I should see "Pixel 7"
      And I should not see "Configure devices"
     When I press "iPhone 15"
     Then I should see "iPhone 15" in the "span" element with the "class" attribute set to "responsive-preview-device-label-text"
     When I go to "/blog"
      And wait 3s
     Then I should see "Blog"
     When I press "Preview page layout"
     Then I should see "iPad Pro"
     When I press "iPad Pro"
     Then I should see "iPad Pro" in the "span" element with the "class" attribute set to "responsive-preview-device-label-text"

  @javascript @check @local @development @staging @production
  Scenario: Check that Site Admin users can access the responsive preview devices
    Given I am a logged in user with the "Site admin" user
     When I go to "/blog"
      And wait 3s
     Then I should see "Blog"
      And I should see "Layout preview" in the "button" element with the "title" attribute set to "Preview page layout"
     When I press "Preview page layout"
     Then I should see "iPhone 15"
      And I should see "iPhone 15 Pro Max"
      And I should see "Galaxy Tab S9 Ultra"
      And I should see "iPad Pro"
      And I should see "Samsung Galaxy S23 Ultra"
      And I should see "Pixel 7"
      And I should not see "Configure devices"
     When I press "iPhone 15"
     Then I should see "iPhone 15" in the "span" element with the "class" attribute set to "responsive-preview-device-label-text"
     When I go to "/blog"
      And wait 3s
     Then I should see "Blog"
     When I press "Preview page layout"
     Then I should see "iPad Pro"
     When I press "iPad Pro"
     Then I should see "iPad Pro" in the "span" element with the "class" attribute set to "responsive-preview-device-label-text"

  @javascript @check @local @development @staging @production
  Scenario: Check that user Number 1 can access the responsive preview devices and configure devices
    Given I am a logged in user with the "webmaster" user
     When I go to "/blog"
      And wait 3s
     Then I should see "Blog"
      And I should see "Layout preview" in the "button" element with the "title" attribute set to "Preview page layout"
     When I press "Preview page layout"
     Then I should see "iPhone 15"
      And I should see "iPhone 15 Pro Max"
      And I should see "Galaxy Tab S9 Ultra"
      And I should see "iPad Pro"
      And I should see "Samsung Galaxy S23 Ultra"
      And I should see "Pixel 7"
      And I should see "Configure devices"
     When I press "iPhone 15"
     Then I should see "iPhone 15" in the "span" element with the "class" attribute set to "responsive-preview-device-label-text"
     When I go to "/blog"
      And wait 3s
     Then I should see "Blog"
     When I press "Preview page layout"
     Then I should see "iPad Pro"
     When I press "iPad Pro"
     Then I should see "iPad Pro" in the "span" element with the "class" attribute set to "responsive-preview-device-label-text"
