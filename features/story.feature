Feature: Story
  As a user
  In order for me to experience a story
  I would like to be able to read a story

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


  Scenario: User reads first part of a story
    When I visit the "Starship" story page
    Then I should see "Starship"
    And I should see "Mariza & Alfred"
    And I should see "Once upon a time, in a far away galaxy. There was a young team on the Discovery Starship"

  Scenario: User starts the story
    When I visit the "Starship" story page
    And I click "Start Story"
    Then I should be on the "The story begins" chapter
    And I should see "There is a huge asteroid coming your way, what do you do?"

  Scenario: User makes first decision
    When I visit the "Starship" story page
    And I click "Start Story"
    And I click "Shoot it with a laser"
    Then I should be on the "Shoot it with a laser" chapter

  Scenario: User makes second decision
    When I visit the "Starship" story page
    And I click "Start Story"
    And I click "Shoot it with a laser"
    Then I should be on the "Shoot it with a laser" chapter
    And I click "Talk"
    Then I should be on the "Talk" chapter

  Scenario: User makes c decision
    When I visit the "Starship" story page
    And I click "Start Story"
    And I click "Shoot it with a laser"
    Then I should be on the "Shoot it with a laser" chapter
    And I click "Run"
    Then I should be on the "Run" chapter

  Scenario: User finishes story
    When I visit the "Starship" story page
    And I click "Start Story"
    And I click "Shoot it with a laser"
    And I click "Run"
    And I click "Right"
    And I click "Home Page"
    Then I should be on the landing page
