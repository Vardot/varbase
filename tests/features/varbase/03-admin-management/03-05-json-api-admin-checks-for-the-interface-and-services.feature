Feature: Check JSON API admin interface and services and Varbase API settings
As a site admin user
I want to be able to check the JSON:API available interface options
So that I can use them to enable or disable API service for Varbase APIs.

  Background:
    Given I am a logged in user with the "webmaster" user

  @javascript @check @local @development @staging @production
  Scenario: Check the Varbase API settings in admin configurations page
     When I go to "/admin/config"
      And I wait
     Then I should see "JSON:API"
      And I should see "Varbase API settings"

  @javascript @check @local @development @staging @production
  Scenario: Check JSON:API configurations
     When I go to "/admin/config/services/jsonapi"
      And I wait
     Then I should see "JSON:API"
      And I should see "Allowed operations"

  @javascript @check @local @development @staging @production
  Scenario: Check JSON:API Extras configurations
     When I go to "/admin/config/services/jsonapi/extras"
      And I wait
     Then I should see "JSON:API Extras"
      And I should see "api" value in the "edit-path-prefix" input element

  @javascript @check @local @development @staging @production
  Scenario: Check JSON:API Resource overrides
     When I go to "/admin/config/services/jsonapi/resource_types"
      And I wait
     Then I should see "JSON:API Resource overrides"
      And I should see "The following table shows the list of JSON:API resource types available."

  @javascript @check @local @development @staging @production
  Scenario: Check Varbase API settings and Generate keys
     When I go to "/admin/config/system/varbase/api"
      And I wait
     Then I should see "Varbase API settings"
      And the "entity_json" checkbox is checked
      And the "bundle_docs" checkbox is checked
     When I go to "/admin/config/system/varbase/api/keys"
      And I wait
     Then I should see "Path to the directory in which to store the generated keys."

  @javascript @check @local @development @staging @production
  Scenario: Check Open API settings and documentation pages
     When I go to "/admin/config/services/openapi"
      And I wait
     Then I should see "OpenAPI Resources"
      And I should see "Rest"
      And I should see "JSON:API"

  @javascript @local @development @staging @production
  Scenario: Upload a Media entity test for API
     Given I am a logged in user with the "Site admin" user
      When I go to "/media/add/image"
       And I wait
      Then I should see "Allowed types: png gif jpg jpeg."
      When I attach the file "flag-earth.jpg" to "edit-field-media-image-0-upload"
       And I wait
       And I press the "Save" button
       And I wait
       And I fill in "Media entity test" for "field_media_image[0][alt]"
       And I fill in "Media entity test" for "field_media_image[0][title]"
       And I fill in "Media entity test" for "name[0][value]"
       And I press the "Save" button
       And I wait
      Then I should see "Media entity test"

  @javascript @local @development @staging @production
  Scenario: Add a term "space" tag term for JSON:API to test.
     Given I am a logged in user with the "Site admin" user
      When I go to "/admin/structure/taxonomy/manage/tags/add"
       And I wait
      Then I should see "Add term"
      When I fill in "space" for "Name"
       And I press the "Save" button
       And I wait
       And I go to "/admin/structure/taxonomy/manage/tags/overview"
      Then I should see "Tags"
       And I should see "space"

 @javascript @check @local @development @staging @production
  Scenario: Check that Site Admin users can access "View JSON" and "View API Docs" entity operations
    Given I am a logged in user with the "Site admin" user
     When I go to "/admin/content"
      And I wait
     Then I should see "Content"
      And I should see the "View JSON" operation for the "Homepage" content
      And I should see the "View API Docs" operation for the "Homepage" content
      And I should see the "Edit" operation for the "Homepage" content
      And I should see the "Layout" operation for the "Homepage" content
      And I should see the "View JSON" operation for the "Blog" content
      And I should see the "View API Docs" operation for the "Blog" content

     When I go to "/admin/content/media"
      And I wait
     Then I should see "Media"
      And I should see the "View JSON" operation for the "Media entity test" media
      And I should see the "View API Docs" operation for the "Media entity test" media
      And I should see the "Edit" operation for the "Media entity test" media

     When I go to "/admin/structure/taxonomy/manage/tags/overview"
      And I wait
     Then I should see "Tags"
      And I should see "space"
      And I should not see the "View JSON" operation for the "space" term
      And I should not see the "View API Docs" operation for the "space" term

     When I go to "/admin/structure/entityqueue"
      And I wait
     Then I should see "Entityqueues"
      And I should not see the "View JSON" operation for the "Media Hero Slider" entity
      And I should not see the "View API Docs" operation for the "Media Hero Slider" entity
      But I should not see the "Edit items" operation for the "Media Hero Slider" entity
      

  @javascript @check @local @development @staging @production
  Scenario: Check that Content Admin users can not access "View JSON" and "View API Docs" entity operations
    Given I am a logged in user with the "Content admin" user
     When I go to "/admin/content"
      And I wait
     Then I should see "Content"
      And I should not see the "View JSON" operation for the "Homepage" content
      And I should not see the "View API Docs" operation for the "Homepage" content
      But I should see the "Edit" operation for the "Homepage" content
      And I should see the "Layout" operation for the "Homepage" content

     When I go to "/admin/content/media"
      And I wait
     Then I should see "Media"
      And I should not see the "View JSON" operation for the "Media entity test" media
      And I should not see the "View API Docs" operation for the "Media entity test" media
      But I should see the "Edit" operation for the "Media entity test" media

     When I go to "/admin/structure/taxonomy/manage/tags/overview"
      And I wait
     Then I should see "Tags"
      And I should see "space"
      And I should not see the "View JSON" operation for the "space" term
      And I should not see the "View API Docs" operation for the "space" term

     When I go to "/admin/structure/entityqueue"
      And I wait
     Then I should see "Entityqueues"
      And I should not see the "View JSON" operation for the "Media Hero Slider" entity
      And I should not see the "View API Docs" operation for the "Media Hero Slider" entity
      But I should not see the "Edit items" operation for the "Media Hero Slider" entity


  @javascript @check @local @development @staging @production
  Scenario: Check that Editor users can access "View JSON" and "View API Docs" entity operations
    Given I am a logged in user with the "Editor" user
     When I go to "/admin/content"
      And I wait
     Then I should see "Content"
      And I should not see the "View JSON" operation for the "Homepage" content
      And I should not see the "View API Docs" operation for the "Homepage" content
      But I should see the "Edit" operation for the "Homepage" content
      And I should see the "Layout" operation for the "Homepage" content

     When I go to "/admin/content/media"
      And I wait
     Then I should see "Media"
      And I should not see the "View JSON" operation for the "Media entity test" media
      And I should not see the "View API Docs" operation for the "Media entity test" media
      But I should see the "Edit" operation for the "Media entity test" media

     When I go to "/admin/structure/taxonomy/manage/tags/overview"
      And I wait
     Then I should see "Tags"
      And I should see "space"
      And I should not see the "View JSON" operation for the "space" term
      And I should not see the "View API Docs" operation for the "space" term
