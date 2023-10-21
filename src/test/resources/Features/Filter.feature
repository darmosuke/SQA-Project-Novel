@Filter
Feature: Filter
  User filter inventory items

  @Filter_positive
  Scenario Outline: User filter (A to Z)
    Given User already open the website sauce demo
    When User input <username> as username <password> as password
    Then User filters the list of product by text <filterSelect>
    Examples:
      | username        | password       | filterSelect    |
      | "standard_user" | "secret_sauce" | "Name (A to Z)" |