Feature: Edit vehicle type

  Scenario: As a valid user I can add a vehicle type and delete a vehicle type
    When I press "Vehicles"
    And I wait for 2 seconds
    And I press the menu key
    And I press "Edit vehicle types"
    And I wait for 2 seconds
    And I press the menu key
    And I press "Add new vehicle type"
    And I enter text "´Bike" into field with id "title"
    And I enter text "~This is a description" into field with id "description"
    And I press "Add new vehicle type"
    Then I should see text containing "´Bike"
    Then I should see text containing "~This is a description"

    And I long press "Car"
    And I press "Delete"
    And I press "OK"
    Then I don't see the text "Car"