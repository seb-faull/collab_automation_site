Feature: user Registration
As a new user
i want to be able to register

@register
Scenario: If I enter the correct details I will create an account
  Given I am on the register page
  And I enter my email address and click the link to register
  When I input the correct details
  Then I will have an account and be directed to the my account page

@register-negative1
Scenario: If I enter an invalid postcode I will receive the appropriate error
  Given I am on the register an account page
  And I enter a correct email address and click the link to register
  When I input the correct details and an invalid postcode
  Then An error message will appear on the page

@register-negative2
Scenario: If I enter an short passowrd I will receive the appropriate error
  Given I am on the register account page
  And I enter a correct email address and click the register link
  When I input the correct details and a short password
  Then The correct error message will appear on the page
