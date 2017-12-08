Feature: User logins in with Facebook
  As a user
  In order to make it easier to login
  I would like to login in with facebook

  Scenario: User logins in successfully with facebook
    Given I visit the landing page
    And I click "Login with Facebook" button
    Then I should be on the landing page
    And I should see "Successfully authenticated from Facebook account"
