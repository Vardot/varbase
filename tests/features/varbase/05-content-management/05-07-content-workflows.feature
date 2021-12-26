Feature: Content Management - Content moderation workflows. Simple workflow, and Editorial workflow
As a content admin
I want to be able to manage the workflow of content in simple and editorial workflows
So that will have an easy publishing workflow with revisions.

  @javascript @local @development @staging @production
  Scenario: Check Simple workflow on Draft, Published, and Archived and content types
    Given I am a logged in user with the "webmaster" user
     When I go to "/admin/config/workflow/workflows/manage/varbase_simple_workflow"
      And I wait
     Then I should see "Simple"
      And I should see "Draft"
      And I should see "Published"
      And I should see "Archived / Unpublished"
      And I should see "Create new draft"
      And I should see "Publish"
      And I should see "Archive / Unpublish"
      And I should see "Restore from archive"
      And I should see "Landing page (Layout Builder)"
      And I should see "Landing page"
      And I should see "Basic page"
      And I should see "Blog post"
      And I should see "Hero slider"

  @javascript @local @development @staging @production
  Scenario: Check Editorial workflow on Draft, Published, In review, and Archived
    Given I am a logged in user with the "webmaster" user
     When I go to "/admin/config/workflow/workflows/manage/varbase_editorial_workflow"
      And I wait
     Then I should see "Editorial"
      And I should see "Draft"
      And I should see "In review"
      And I should see "Published"
      And I should see "Archived / Unpublished"
      And I should see "Create new draft"
      And I should see "Send to review"
      And I should see "Publish"
      And I should see "Archive / Unpublish"
      And I should see "Restore from archive"