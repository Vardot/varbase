Feature: AI Agent integration and interpolation
      As a site and content admin
      I want to be able to use AI Agents
      So that an interpolation to content can be assisted with AI

  @javascript @local @development @stating @production
  Scenario: Check AI Providers and keys
    Given I am a logged in user with the "webmaster" user
     When I go to "/admin/config/ai/providers"
      And wait 2s
     Then I should see "AI Providers"
      And I should see "OpenAI Authentication"
     When I click "OpenAI Authentication"
      And wait 2s
     Then I should see "Setup OpenAI Authentication"
     When I go to "/admin/config/system/keys"
      And wait 2s
     Then I should see "Keys"
      And I should see "Open AI Key"

  @javascript @local @development @staging @production
  Scenario: Check AI Assistant and interpolation options to content
    Given I am a logged in user with the "webmaster" user
     When I go to "/node/add/varbase_blog"
      And wait 2s
     Then I should see "AI Assistant"
     When I click on "AI Assistant" command button in the rich text editor field "Body"
     Then I should see "Generate with AI"
      And I should see "Reformat HTML"
      And I should see "Fix spelling"
      And I should see "Summarize"
