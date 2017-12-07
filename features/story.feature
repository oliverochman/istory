Feature: Story
  As a user
  In order for me to experience a story
  I would like to be able to read a story

  Background:
    Given the following story exists
    | title    | author          | intro                                                                                    |
    | Starship | Mariza & Alfred | Once upon a time, in a far away galaxy. There was a young team on the Discovery Starship |
    And the following chapters exists
    | chapter_id | content                                                   | choice_a              | choice_b |
    | A          | There is a huge asteroid coming your way, what do you do? | Shoot it with a laser | Hide     |
    | AA         | Now a monster emerges from inside the asteroid, wyd?      | Throw a grenade       | Talk     |
    | AB         | The asteroid hits the starship, wyd?                      | Save yourself         | Save everyone else |
  Scenario: User reads first part of a story
    When I visit the "Starship" story page
    Then I should see "Starship"
    And I should see "Mariza & Alfred"
    And I should see "Once upon a time, in a far away galaxy. There was a young team on the Discovery Starship"

  Scenario: User starts the story
    When I visit the "Starship" story page
    And I click "Start Story"
    Then I should be on the first chapter page
    And I should see "There is a huge asteroid coming your way, what do you do?"

  Scenario: User makes first decision
    When I visit the "Starship" story page
    And I click "Start Story"
    And I click "Shoot it with a laser"
    Then I should be on the "AA" chapter
