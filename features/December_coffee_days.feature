Feature: December coffee days 
  <Some interesting description here> 

  Scenario: Purchase coffee on Fridays reduces cost in count > 3   
    <Some interesting scenario steps here>
    Given the customer has a menu order
    When they purchase a coffee
    And the inventory count of coffees is > 3
    And the date is Monday
    Then cusomters should expect the price of the coffee to be price * .5
