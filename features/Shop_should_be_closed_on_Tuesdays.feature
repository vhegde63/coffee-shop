Feature:  Shop should be closed on Tuesdays		
  As the owner		
  If the date is Tuesday		
  I expect to be closed		
 
  @store_hours @c
  Scenario: The shop should be closed on Tuesday
    Given a menu order
    When the date is Tuesday
    Then I expect the inventory count to equal previous count
    And I expect a message 'coffees are not sold on Tuesdays'
    And add a new step
