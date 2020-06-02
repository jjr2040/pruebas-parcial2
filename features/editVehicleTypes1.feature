Feature: Edit vehicle type

  Scenario: As a valid user I can add a vehicle type
    When I press "Vehicles"
    And I wait for 2 seconds
    And I press the menu key
    And I press "Edit vehicle types"
    And I wait for 3 seconds
    And I press the menu key
    And I wait for 2 seconds
    And I press "Add new vehicle type"
    And I enter text "Bike" into field with id "title"
    And I enter text "This is a description" into field with id "description"
    And I press "Add new vehicle type"
    Then I should see text containing "Bike"
    Then I should see text containing "This is a description"

    And I long press "Car"
    And I press "Edit"
    And I enter text "Car 2" into field with id "title"
    And I press "Save changes"
    Then I should see text containing "Car 2"

