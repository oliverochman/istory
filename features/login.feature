Feature: Login
  As a user
  In order to access my account
  I would like to be able to login to my account

  Background:
    Given the following user exists
      | email                       | password |
      | jenny@ranom.com             | password |
      | daniel@random.com           | password |

  Scenario: A user provides valid credentials and can log in
    Given I am on the landing page
    When I click "Login" button
    And show me the page
    Then I am on the login page
    And I enter "Email" as "jenny@ranom.com"
    And I enter "Password" as "password"
    And I click "Log in"
    Then I should be on the landing page
    And show me the page

  Scenario: User leaves email field empty on login
    Given I am on the login page
    When I enter "Email" as ""
    And I enter "Password" as "password"
    And I click "Log in"
    Then I should see notice "Email can't be blank"

  Scenario: User leaves password field empty on login
    Given I am on the login page
    When I enter "Email" as "daniel@random.com"
    And I enter "Password" as ""
    And I click "Log in"
    Then I should see notice "Password can't be blank"
