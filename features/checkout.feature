@checkout
Feature: Checkout Activities
as a User
i want to be able to checkout and purchase items from the website

  Scenario: When we have landed on the checkout page, signed in and have an item in the basket then I will be able to proceed through checkout
    Given I am signed in on the checkout page and have an item in the cart
    Then I should see the item image in the product space
    When I click the proceed button
    Then I go to the address confirmation page

    And I enter a comment
    And I click proceed
    Then I will go to the shipping page

    When I check the terms of service checkbox
    And I am on the payment confirmation page
    Then I will be able to confirm my order
    And I should be able to see a confirmation message
