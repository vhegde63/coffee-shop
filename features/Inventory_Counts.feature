@inventory
Feature: Inventory Counts
  
  Scenario Outline: Coffee should reduce inventory count when purchased
    Given an inventory list of <number> coffees
    When I purchase a coffee
    And I receive it
    Then I expect the inventory count to equal <count>
    And I expect a message that says <message>
    
    Examples:
      | number | count | message |
      | 3      |  2    | success |
      | 0      |  0    | failure |
    
    