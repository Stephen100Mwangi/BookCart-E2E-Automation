Feature:Cart Feature
    Through this feature, a user is able to view and manage items in the shopping cart before checkout.

        Scenario: User accesses the shopping cart page
            Given the user is on the application
             When the user navigates to the shopping cart page
             Then the shopping cart page should be displayed

        Scenario: User views an empty shopping cart
            Given the shopping cart contains no items
             When the user opens the cart page
             Then the message "Your shopping cart is empty" should be displayed
              And the checkout option should not be displayed

        Scenario: User continues shopping from an empty cart
            Given the user is on the shopping cart page
              And the cart is empty
             When the user clicks "Continue shopping"
             Then the user should be redirected to the product catalog page

        Scenario: User views selected products in the cart
            Given the shopping cart contains products
             When the user opens the cart page
             Then all selected products should be displayed
              And the product title should be visible
              And the product quantity should be visible
              And the product price should be visible

        Scenario: User removes an item from the cart
            Given the shopping cart contains a product
             When the user removes the product from the cart
             Then the product should no longer appear in the cart

        Scenario: User removes the last remaining item from the cart
            Given the shopping cart contains one product
             When the user removes the product
             Then the cart should become empty
              And the message "Your shopping cart is empty" should be displayed

        Scenario: User increases the quantity of a product
            Given the shopping cart contains a product with quantity 1
             When the user increases the quantity by 1
             Then the quantity should be updated to 2

        Scenario: User decreases the quantity of a product
            Given the shopping cart contains a product with quantity 2
             When the user decreases the quantity by 1
             Then the quantity should be updated to 1

        Scenario: User attempts to reduce quantity below 1
            Given the shopping cart contains a product with quantity 1
             When the user decreases the quantity
             Then the quantity should remain 1
              And an appropriate validation message should be displayed

        Scenario: Cart total updates after increasing quantity
            Given the shopping cart contains a product
              And the cart total is displayed
             When the user increases the product quantity
             Then the cart total should be recalculated

        Scenario: Cart total updates after decreasing quantity
            Given the shopping cart contains a product
              And the cart total is displayed
             When the user decreases the product quantity
             Then the cart total should be recalculated

        Scenario: Cart total updates after removing an item
            Given the shopping cart contains multiple products
             When the user removes a product
             Then the cart total should be recalculated

        Scenario: User proceeds to checkout
            Given the shopping cart contains at least one product
             When the user clicks "Proceed to Checkout"
             Then the checkout page should be displayed

        Scenario: User attempts to proceed to checkout with an empty cart
            Given the shopping cart is empty
             When the user attempts to proceed to checkout
             Then checkout should not be allowed

        Scenario: Cart icon count is updated when items are added or removed
            Given the shopping cart contains products
             When an item is added or removed
             Then the cart item count displayed in the header should be updated

        Scenario: Cart contents persist after page refresh
            Given the shopping cart contains products
             When the user refreshes the page
             Then the products should still appear in the cart

        Scenario: User navigates directly to cart URL
            Given the user is not on the cart page
             When the user enters the cart URL directly
             Then the shopping cart page should be displayed

        Scenario: Multiple different products exist in cart
            Given the shopping cart contains multiple products
             When the user views the cart
             Then all products should be displayed correctly