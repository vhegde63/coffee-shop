
Feature:Shop should be closed on Thursdays
  <Some interesting description here>

    @coffee @coffee_shop
  Scenario:Based on low coffee sales, coffee shops should be closed
    <Some interesting scenario steps here>
    Given the the customer has a menu order
    When the the customer requests a coffee order
    And the day is Thursday
    Then customers should expect an error message to be displayed when trying to order in the store
    
