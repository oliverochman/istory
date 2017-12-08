Feature: User leaves rating on story
  As a User,
  In order to express my opinion about the story,
  I would like to be able to rate it after finishing the story

  Background:
    Given the following story exists
      | title    | author          | intro                                                                                    |
      | Starship | Mariza & Alfred | Once upon a time, in a far away galaxy. There was a young team on the Discovery Starship |

    And the following chapters exists
      | parent_chapter        | title                 | content                                                   |
      |                       | The story begins      | There is a huge asteroid coming your way, what do you do? |
      | The story begins      | Shoot it with a laser | Now a monster emerges from inside the asteroid, wyd?      |
      | The story begins      | Hide                  | The asteroid hits the starship, wyd?                      |
      | Shoot it with a laser | Talk                  | The monster says it wants to kill you, wyd?               |
      | Shoot it with a laser | Throw a grenade       | The monster explodes, the whole room is now messy, wyd?   |
      | Shoot it with a laser | Run                   | The monster runs after you. Go right or left?             |
      | Run                   | Right                 | The monster got stuck and you got away. The end           |

  Scenario: User rates
    Given I visit the "Starship" story page
    And I click "Start Story"
    And I click "Shoot it with a laser"
    And I click "Run"
    When I click "Right"
    Then I should see "Rating"
