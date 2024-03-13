Feature: AI Agent integration and interpolation
As a site and content admin
I want to be able to use AI Agents
So that an interpolation to content can be assisted with AI

  @javascript @local @development @staging @production
  Scenario: Check OpenAI Settings
    Given I am a logged in user with the "webmaster" user
     When I go to "/admin/config/openai/settings"
      And wait
     Then I should see "OpenAI Settings"
      And I should see "API Key"
      And I should see "Organization ID"

  @javascript @local @development @staging @production
  Scenario: Check OpenAI and interpolation options to content
    Given I am a logged in user with the "webmaster" user
     When I go to "/node/add/varbase_blog"
      And wait
     Then I should see "Analyze text"
      And I should see "Adjust content tone"
      And I should see "Summarize text"
      And I should see "Suggest content title"
      And I should see "Suggest taxonomy"
