@home
Feature: Homepage Activities
as a User
i want to be able to use the homepage

  Scenario: If i click on the contact us link I go to the contact page
    Given I am on the homepage
    When I click the contact us link
    Then I go to the contact us page
