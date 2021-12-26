Feature: User Management - Standard User Management - Users with permission to assign roles may select which roles are available for assignment
As a logged in site admin and a permission to Assign roles
I will be able to assign roles to other users.
So that only users with permission to assign roles may select which roles are available for assignment

  @javascript @check @local @development @staging @production
  Scenario: Check the Role Assign configuration
    Given I am a logged in user with the "webmaster" user
     When I go to "/admin/people/roleassign"
      And I wait
     Then I should see "Role assign"
      And the "Editor" checkbox should be checked
      And the "Content Admin" checkbox should be checked
      And the "Site Admin" checkbox should be checked
