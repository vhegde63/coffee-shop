Feature: Shop should be closed on Tuesdays		
  As the owner		
  When the date is Tuesday		
  I expect to be closed	
  
  @store_hours
  Scenario: The Shop should be closed on Tuesday 
    Given a menu order
    When the date is Tuesday 
    Then I expect the inventory count to be the same 
    And I expect an error message to be displayed when trying to order 
    And Make a change
