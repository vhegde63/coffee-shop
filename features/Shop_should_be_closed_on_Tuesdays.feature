Feature:  Shop should be closed on Tuesdays		
  As the owner		
  If the date is Tuesday		
  I expect to be closed		
 
  @store_hours @coffee
  Scenario: The shop should be closed on Tuesday
    Given a menu order
    When the date is Tuesday
    Then I expect the inventory count to equal previous count

  Scenario: The POS should not acceptence payment when account it over drawn
    Given the customer has a menu order
    When they purchase a coffee
    And the account is overdrawn
    Then I expect an error message to be displayed when trying to order