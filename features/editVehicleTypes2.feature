Feature: Edit vehicle type

  Scenario: As a valid user I can add a vehicle type
    When I press "Vehicles"
    And I press the menu key
    And I press "Edit vehicle types"
    And I wait for progress
    And I press the menu key
    And I press "Add new vehicle type"
    And I press "Add new vehicle type"
    Then I should see text containing "Title"




