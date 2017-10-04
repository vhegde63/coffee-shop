Feature: New Feature for Coffee Shop Not Being Open on Friday
  @store_hours
  Scenario: The Shop should be closed on Fridays 
    Given I expect a message 'coffees are not sold on Fridays'
    When the date is Friday
    And I try to order a New coffee 
    And Make a change!!!!
