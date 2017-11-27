
Feature:Coffee Shops should be closed on Tuesdays in December
  <Some interesting description here>

    @coffee
  Scenario:Based on low coffee sales, coffee shops should be closed
    <Some interesting scenario steps here>
    Given the the customer has a menu order
    When the customer requests a coffee order
    And today is Tuesday --> MAKE A CHANGE
    Then customers should expect an error message to be displayed when trying to order in the store
    
    
    
    
