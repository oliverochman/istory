Feature: Story
  As a user
  In order for me to experience a story
  I would like to be able to read a story

  Scenario: User reads first part of a story
    Given I visit the "Starship" story page
    Then I should see "Starship"
    And I should see "Once upon a time, in a far away galaxy. There was a young team on the Discovery Starship"
