Feature: User Management - Standard User Management - Have fine-grained access control of user administrators protections with specific user, or all users in a role
As a logged in site admin
I will be allowed to fine-grained access control of user administrators
So that the protections can be specific to a user, or applied to all users in a role.

  @javascript @check @local @development @staging @production
  Scenario: Check the User protect configuration
    Given I am a logged in user with the "webmaster" user
     When I go to "/admin/config/people/userprotect"
      And I wait
     Then I should see "Protected site admin"
      And I should see "Protected super admin"
      And I should see "Protected webmaster"
