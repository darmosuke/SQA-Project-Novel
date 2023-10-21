@Cart
Feature: Cart Feature
  As a user i want to add or remove item from cart

  @Cart_positive
  Scenario: Adding item to cart
    Given User already open the website sauce demo
    When User input "standard_user" as username "secret_sauce" as password
    And User filters the list of product by text "Name (Z to A)"
    And User clicking "Test.allTheThings() T-Shirt (Red)" of item into a cart
    Then User clicking "Sauce Labs Fleece Jacket" of item into a cart
