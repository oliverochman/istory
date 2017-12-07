Feature: Story
  As a user
  In order for me to experience a story
  I would like to be able to read a story

  Background:
    Given the following story exists
      | title    | author          | intro                                                                                    |
      | Starship | Mariza & Alfred | Once upon a time, in a far away galaxy. There was a young team on the Discovery Starship |
#    And the following chapters exists
#    | chapter_id | content                                                   | choice_a              | choice_b            | choice_c |
#    | A          | There is a huge asteroid coming your way, what do you do? | Shoot it with a laser | Hide                |          |
#    | AA         | Now a monster emerges from inside the asteroid, wyd?      | Throw a grenade       | Talk                | Run      |
#    | AB         | The asteroid hits the starship, wyd?                      | Save yourself         | Save everyone else  |          |
#    | AAB        | The monster says it wants to kill you, wyd?               | Fight the monster     | Run away            |          |
#    | AAA        | The monster explodes, the whole room is now messy, wyd?   | Clean                 | Dont clean          |          |
#    | AAC        | The monster runs after you. Go right or left?             | Right                 | left                |          |
  #  | AACA       | The monster got stuck and you got away, SUCCESS           |                       |                     |          |


    And the following chapters exists
      | parent_chapter        | title                 | content                                                   |
      |                       | The story begins      | There is a huge asteroid coming your way, what do you do? |
      | The story begins      | Shoot it with a laser | Now a monster emerges from inside the asteroid, wyd?      |
      | The story begins      | Hide                  | The asteroid hits the starship, wyd?                      |
      | Shoot it with a laser | Talk                  | The monster says it wants to kill you, wyd?               |
      | Shoot it with a laser | Throw a grenade       | The monster explodes, the whole room is now messy, wyd?   |
      | Shoot it with a laser | Run                   | The monster runs after you. Go right or left?             |


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
