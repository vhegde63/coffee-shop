@coffee_shop @unimplemented 
Feature: A new feature to test ci
  This is a description

  @inventory @regression
  Scenario:
    Given I try to order a New coffee
    When the date is Friday
    Then I expect the inventory count to equal previous count
    And I should be served a coffee
