
Feature: Shop should be closed on Thursdays		
  As the owner		
  When the date is Thursday		
  I expect to be closed	
  
  @store_hours
  Scenario: The Shop should be closed on Thursday 
    Given a menu order
    When the date is Thursday 
    Then I expect the inventory count to be the same 
    And I expect an error message to be displayed when trying to order 
    And Make a change