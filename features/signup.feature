Feature: Sign Up
  As a user,
  In order to access stories,
  I would like to be able to create an account

  Scenario: User provides valid information and signs up
    Given I am on the sign up page
    When I enter "Email" as "random@random.com"
    And I enter "Password" as "password"
    And I enter "Password confirmation" as "password"
    And I click "Sign up"
    Then I should be on the landing page
    And I should see "Welcome! You have signed up successfully."

  Scenario: User leaves email field empty on sign up
    Given I am on the sign up page
    When I enter "Email" as ""
    And I enter "Password" as "password"
    And I enter "Password confirmation" as "password"
    And I click "Sign up"
    Then I should see "Email can't be blank"

  Scenario: User leaves password field empty on sign up
    Given I am on the sign up page
    When I enter "Email" as "random@random.com"
    And I enter "Password" as ""
    And I enter "Password confirmation" as "password"
    And I click "Sign up"
    Then I should see "Password can't be blank"

  Scenario: User password does not match password confirmation on sign up
    Given I am on the sign up page
    When I enter "Email" as "random@random.com"
    And I enter "Password" as "password"
    And I enter "Password confirmation" as "secretcode"
    And I click "Sign up"
    Then I should see "Password confirmation doesn't match Password"
