
Feature: Shop should reduce price of leftover coffees on Friday
  <Some interesting description here>

  Scenario: Purchase coffee on Fridays reduces cost in count > 3   
    <Some interesting scenario steps here>
    Given a menu order
    When I I purchase a coffee
    And the the inventory count of coffees is > 3
    And the date is Friday
    Then I expect theh I expect the price of the coffee to be price * .5
