Feature: Add vehicle

  Scenario: As a valid user I can add a vehicle
    When I press "Vehicles"
    And I press the menu key
    And I press "Add new vehicle"
    And I wait for 10 seconds
    And I press "Add new vehicle"
    Then I should see text containing "Invalid vehicle title"




