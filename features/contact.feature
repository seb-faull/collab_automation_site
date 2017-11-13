@contact
Feature: Contact

As a user
I want to be able to use the contact page to send a message

Scenario: when i am on the contact page
  Given I am on the contact page
  When I choose a subject header
  And Enter a valid email address
  And Enter a valid order reference
  And Type a message
  And send message
  Then I will see a success message

Scenario: when i send an invalid message with no subject header
  Given i am on the contct page
  And Enter an invalid email address
  And Enter an invalid order reference
  And Type an invalid message
  And send an invalid message
  Then I will see an error message
