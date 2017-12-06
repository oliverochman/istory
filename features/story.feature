Feature: Story
  As a user
  In order for me to experience a story
  I would like to be able to read a story

  Background:
    Given the following story exists
    | title    | author          | intro                                                                                    |
    | Starship | Mariza & Alfred | Once upon a time, in a far away galaxy. There was a young team on the Discovery Starship |

  Scenario: User reads first part of a story
    When I visit the "Starship" story page
    And show me the page
    Then I should see "Starship"
    And I should see "Mariza & Alfred"
    And I should see "Once upon a time, in a far away galaxy. There was a young team on the Discovery Starship"
