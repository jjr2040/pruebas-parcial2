Feature: Add vehicle and delete a vehicle

  Scenario: As a valid user I can add a vehicle and delete a vehicle
    When I press "Vehicles"
    And I wait for 2 seconds
    And I press the menu key
    And I press "Add new vehicle"
    And I wait for progress
    And I enter text "Vehicle 2" into field with id "title"
    And I enter text "2020" into field with id "year"
    And I enter text "Toyota" into field with id "make"
    And I enter text "4" into field with id "model"
    And I enter text "This is a drescription" into field with id "description"
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
    Then I should see text containing "Vehicle 2"
    Then I should see text containing "This is a drescription"

    And I long press "Default vehicle"
    And I scroll down
    And I scroll down
    And I scroll down
    And I press "Delete"
    And I press "OK"
    Then I should see text containing "Vehicle 2"




