Feature: History tab

  Scenario: Shows history records
    When I press "Fillup"
    And I enter text "1.63" into field with id "price"
    And I enter text "2" into field with id "volume"
    And I enter text "100" into field with id "odometer"
    And I press view with id "partial"
    And I press "Save Fillup"
    And I press "Fillup"
    And I enter text "2.2" into field with id "price"
    And I enter text "4" into field with id "volume"
    And I enter text "150" into field with id "odometer"
    And I press view with id "partial"
    And I press "Save Fillup" 
    And I press "History"
    And I wait for 1 seconds 
    Then I should see "partial"
    Then I should see "2.00"
    Then I should see "1.63"
    Then I should see "2.2"
    Then I should see "4.00"
  
  Scenario: Shows history summary
    When I press "History"
    And I wait for 1 seconds 
    And I press list item number 1
    Then I should see "Fillup information"
    Then I should see "Statistics"
    Then I should see "Is partial?"
    Then I should see "Volume"
    Then I should see "Odometer"
    Then I should see "Price per unit"
    Then I should see "Total cost"
    Then I should see "Distance"
    Then I should see "Economy"
    Then I should see "true"
    Then I should see "4.00 Gallons"
    Then I should see "150.00 mi"
    Then I should see "$2.20"
    Then I should see "$8.80"
    Then I should see "50.00 mi"
    Then I should see "0.00 mpg"
  
  Scenario: Previous record
    When I press "History"
    And I wait for 1 seconds 
    And I press list item number 1
    And I press "Previous"
    And I wait for 1 seconds
    Then I should see "Fillup information"
    Then I should see "Statistics"
    Then I should see "Is partial?"
    Then I should see "Volume"
    Then I should see "Odometer"
    Then I should see "Price per unit"
    Then I should see "Total cost"
    Then I should see "Distance"
    Then I should see "Economy"
    Then I should see "true"
    Then I should see "2.00 Gallons"
    Then I should see "100.00 mi"
    Then I should see "$1.63"
    Then I should see "$3.26"
  
  Scenario: Next record
    When I press "History"
    And I wait for 1 seconds 
    And I press list item number 2
    And I press "Next"
    And I wait for 1 seconds
    Then I should see "Fillup information"
    Then I should see "Statistics"
    Then I should see "Is partial?"
    Then I should see "Volume"
    Then I should see "Odometer"
    Then I should see "Price per unit"
    Then I should see "Total cost"
    Then I should see "Distance"
    Then I should see "Economy"
    Then I should see "true"
    Then I should see "4.00 Gallons"
    Then I should see "150.00 mi"
    Then I should see "$2.20"
    Then I should see "$8.80"
    Then I should see "50.00 mi"
    Then I should see "0.00 mpg"
  
  Scenario: Edit record
    When I press "History"
    And I wait for 1 seconds 
    And I press list item number 1
    And I press "Edit"
    And I clear input field with id "volume"
    And I enter text "6" into field with id "volume"
    And I press "Save changes"
    And I wait for 1 seconds
    And I go back
    Then I should see "6.00"
  
  Scenario: Show statistics
    When I press "Statistics"
    Then I should see "Fuel economy"
    Then I should see "Distance between fillups"
    Then I should see "Fillup costs"
    Then I should see "Cost per distance"
    Then I should see "Fuel price"
    Then I should see "10000.00 mpg"
    Then I should see "-10000.00 mpg"
    Then I should see "0.00 mi"
    Then I should see "50.00 mi"
    Then I should see "$8.23"
    Then I should see "$3.26"
    Then I should see "$13.20"
    Then I should see "$16.46"
    Then I should see "$493.80 / mo"
    Then I should see "$6007.90 / yr"
    Then I should see "$0.26 / mi"
    Then I scroll down
    Then I should see "Fuel consumption"
    Then I should see "Fillup locations"
    Then I should see "6.00 Gallons"
    Then I should see "8.00 Gallons"
    Then I should see "8.00 Gallons"
    Then I should see "4.00 Gallons"
    Then I should see "2.00 Gallons"
    Then I should see "730.00 Gallons / yr"

