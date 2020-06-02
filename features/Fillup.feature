Feature: Fillup tab

  Scenario: Fillup tab is available
    When I press "Fillup"
    Then I see "Fillup information"

  Scenario: Empty form is not allowed
    When I press "Fillup"
    And I press "Save Fillup"
    Then I see "Invalid value for volume"

  Scenario: Just price is not allowed
    When I press "Fillup"
    And I enter text "1.63" into field with id "price"
    And I press "Save Fillup"
    Then I see "Invalid value for volume"

  Scenario: Just odometer is not allowed
    When I press "Fillup"
    And I enter text "100" into field with id "odometer"
    And I press "Save Fillup"
    Then I see "Invalid value for volume"

  Scenario: Just Tank was not filled to the top is not allowed
    When I press "Fillup"
    And I press view with id "partial"
    And I press "Save Fillup"
    Then I see "Invalid value for volume"

  Scenario: Just gallons is not allowed
    When I press "Fillup"
    And I enter text "2" into field with id "volume"
    And I press "Save Fillup"
    Then I see "Invalid value for price"

  Scenario: Complete form
    When I press "Fillup"
    And I enter text "1.63" into field with id "price"
    And I enter text "2" into field with id "volume"
    And I enter text "100" into field with id "odometer"
    And I press view with id "partial"
    And I press "Save Fillup"
    Then I see "partial"