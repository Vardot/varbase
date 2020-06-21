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

  @check @local @development @staging @production
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

     When I go to "/admin/config/services/openapi/redoc/rest"
      And I wait
     Then I should see "The REST API provide by the core REST module"

     When I go to "/admin/config/services/openapi/redoc/jsonapi"
      And I wait
     Then I should see "This is a JSON API compliant implementation"

     When I go to "/admin/config/services/openapi/swagger/jsonapi"
      And I wait
     Then I should see "OpenAPI Documentation"