# features/products.feature

Feature: Product management

  Background:
    Given the following products
      | id | name      | category    | availability  |
      | 1  | Product 1 | Electronics | In Stock      |
      | 2  | Product 2 | Electronics | Out of Stock  |
      | 3  | Product 3 | Furniture   | In Stock      |

  Scenario: Deleting a product
    Given I have a product with id 1
    When I delete the product with id 1
    Then the product with id 1 should be removed from the list
    And the product list should now be
      | id | name      | category    | availability  |
      | 2  | Product 2 | Electronics | Out of Stock  |
      | 3  | Product 3 | Furniture   | In Stock      |
