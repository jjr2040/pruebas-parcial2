Feature: Edit vehicle

  Scenario: As a valid user I can edit a vehicle
    When I press "Vehicles"
    And I wait for 2 seconds
    And I press "Default vehicle"
    And I enter text "2010" into field with id "year"
    And I enter text "2010" into field with id "model"
    And I press "Save changes"
    And I wait for 2 seconds
    And I press "Default vehicle"
    Then I should see text containing "2010"




