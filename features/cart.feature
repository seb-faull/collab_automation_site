@cart
Feature: Adding Item to Cart
  as a User
  I want to be be able to add an item to cart

  Scenario: If I click on the add to cart button, item should be added to the cart if proceed to
    checkout button pressed
    Given that I am on the t-shirt item page
    When I click on the add to cart button
    And I click on the proceed to checkout button
    Then I will go to the checkout page

    Scenario: If I click on the add to cart button and return to shopping button, should return to
      the item page
      Given that I am on the t-shirt item page
      When I click on the add to cart button
      And I click on the return to shopping button
      Then I will go back to the t-shirt item page
