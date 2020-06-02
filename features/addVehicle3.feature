Feature: Add vehicle

  Scenario: As a valid user I can add a vehicle
    When I press "Vehicles"
    And I press the menu key
    And I press "Add new vehicle"
    And I wait for progress
    And I enter text "ÀVehicle 2" into field with id "title"
    And I enter text "abc2020" into field with id "year"
    And I enter text "^Toyota" into field with id "make"
    And I enter text "ff4" into field with id "model"
    And I enter text "ñThis is a drescription" into field with id "description"
    And I scroll down
    And I scroll down
    And I scroll down
    And I press "Miles"
    And I press "Kilometers"
    And I press "Gallons"
    And I press "Litres"
    And I press "Miles / Gallon"
    And I press "Miles / Litre"
    And I press "Add new vehicle"
    Then I should see text containing "ÀVehicle 2"
    Then I should see text containing "ñThis is a drescription"




