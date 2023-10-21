@Checkout
Feature: Checkout
  User checkout items from cart

  @Checkout_positive
  Scenario: Checkout item from cart
    #Login
    Given User already open the website sauce demo
    When User input "standard_user" as username "secret_sauce" as password
    #Adding Item
    And User clicking "Test.allTheThings() T-Shirt (Red)" of item into a cart
    And User clicking "Sauce Labs Onesie" of item into a cart
    #Going to cart page
    And User navigating to cart page
    #Verifying user on cart page
    Then User already on "Your Cart" as cart page
    #Going to checkout page
    And User navigating to checkout page
    #Input firstName lastName and postalCode
    And User filling "Novel" as firstName, "Set" as lastName and "10610" as postal code
    #Going to receipt page
    And User navigating to checkout overview page
    #VerifyingPayment
    Then User verifying item total and tax price
    #Pay and back to homePage
    And User navigating to checkout complete page and going back to home page