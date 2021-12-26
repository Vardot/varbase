Feature: Admin management - Standard User Management - Users with permission to bulk upload media
As a logged in user with permission to use media bulk upload bulk upload form
I will be able to bulk upload media
So that large number of asset files can be uploaded at onces

  @javascript @check @local @development @staging @production
  Scenario: Check that user Number 1 can bulk upload media
    Given I am a logged in user with the "webmaster" user
     When I go to "/admin/content/media/bulk-upload/media_bulk_upload"
      And I wait
     Then I should see "Multiple upload"

  @javascript @check @local @development @staging @production
  Scenario: Check that an anonymous users can not bulk upload media
    Given I am an anonymous user
     When I go to "/admin/content/media/bulk-upload/media_bulk_upload"
      And I wait
     Then I should not see "Multiple upload"
      And I should see "Access denied"

  @javascript @check @local @development @staging @production
  Scenario: Check that an authenticated user can not bulk upload media
    Given I am a logged in user with the "Normal user" user
     When I go to "/admin/content/media/bulk-upload/media_bulk_upload"
      And I wait
     Then I should not see "Multiple upload"
      And I should see "Access denied"

  @javascript @check @local @development @staging @production
  Scenario: Check that Editor users can bulk upload media
    Given I am a logged in user with the "Editor" user
     When I go to "/admin/content/media/bulk-upload/media_bulk_upload"
      And I wait
     Then I should see "Multiple upload"

  @javascript @check @local @development @staging @production
  Scenario: Check that Content Admin users bulk upload media
    Given I am a logged in user with the "Content admin" user
     When I go to "/admin/content/media/bulk-upload/media_bulk_upload"
      And I wait
     Then I should see "Multiple upload"

  @javascript @check @local @development @staging @production
  Scenario: Check that SEO Admin users can bulk upload media
    Given I am a logged in user with the "SEO admin" user
     When I go to "/admin/content/media/bulk-upload/media_bulk_upload"
      And I wait
     Then I should see "Multiple upload"

  @javascript @check @local @development @staging @production
  Scenario: Check that Site Admin users can bulk upload media
    Given I am a logged in user with the "Site admin" user
     When I go to "/admin/content/media/bulk-upload/media_bulk_upload"
      And I wait
     Then I should see "Multiple upload"
