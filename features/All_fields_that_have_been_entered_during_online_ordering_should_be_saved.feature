@ono-703 @save-order
Feature: All fields that have been entered during online ordering should be saved

  Background:
    Given I am logged into ICE using username "fmiqa1+autoqa@gmail.com" and password "autoqa.1234"
    And I am on "Online Ordering" page
    When I select "Patient Information"
    And I wait "1" seconds
    And I input "patient.firstName" as "John"
    And I input "patient.lastName" as "Doe"

  Scenario Outline: All fields on Patient information section that have been entered during online ordering should be saved
    When I input "patient.date" as "06061989"
    And I choose "<Sex>" for "patient.sex"
    And I choose "<Transplant>" for "patient.transplant"
    And I input "patient.medicalRecordNumber" as "06061989"
    And I input "patient.address" as "2100 stearns hill road"
    And I input "patient.zipCode" as "02451"
    And I input "patient.phoneNumber" as "7163604800"
    And I input "patient.email" as "vicky@gmail.com"
    And I click on the "showSaveModal" "Button"
    And I click on the "save" "Button"
    And I click the last saved order
    And I select "Patient Information"
    Then I verify "patient.firstName" value is set as "John"
    And I verify "patient.lastName" value is set as "Doe"
    And I verify "patient.date" value is set as "06/06/1989"
    And I verify "<Sex>" value is selected for "patient.sex"
    And I verify "<Transplant>" value is selected for "patient.transplant"
    And I verify "patient.medicalRecordNumber" value is set as "06/06/1989"
    And I verify "patient.address" value is set as "2100 stearns hill road"
    And I verify "patient.zipCode" value is set as "02451"
    And I verify "patient.cityState" value is set as "Waltham, MA"
    And I verify "patient.country" value is set as "USA"
    And I verify "patient.phoneNumber" value is set as "(716) 360-4800"
    And I verify "patient.email" value is set as "vicky@gmail.com"

    Examples:
      | Sex    | Transplant |
      | Female | No         |
      | Male   | Yes        |