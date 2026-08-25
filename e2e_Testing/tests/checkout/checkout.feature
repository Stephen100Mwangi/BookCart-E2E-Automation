Feature: Checkout

    Through this feature, a user is able to review their order, provide shipping information, complete payment, and place an order.

        Scenario: User accesses checkout page
            Given the shopping cart contains at least one product
             When the user clicks "Proceed to Checkout"
             Then the checkout page should be displayed

        Scenario: User views order summary during checkout
            Given the user is on the checkout page
              And the cart contains products
             When the checkout page loads
             Then all selected products should be displayed
              And each product should display its quantity and price
              And the order total should be displayed correctly

        Scenario: User enters valid shipping details
            Given the user is on the checkout page
             When the user enters a valid shipping address
              And the user enters a valid contact number
             Then the shipping information should be accepted

        Scenario: User submits checkout form with required fields missing
            Given the user is on the checkout page
             When the user leaves required fields blank
              And submits the checkout form
             Then validation messages should be displayed
              And the order should not be processed

        Scenario Outline: User enters invalid checkout details
            Given the user is on the checkout page
             When the user enters "<value>" in "<field>"
             Then an appropriate validation message should be displayed

        Examples:
                  | field        | value         |
                  | Email        | invalid-email |
                  | Phone Number | abc123        |
                  | Postal Code  | !!!           |

        Scenario: User completes payment successfully
            Given the user has entered valid checkout information
              And the order total is displayed
             When the user submits payment using a valid payment method
             Then the payment should be approved
              And the order should be created
              And an order confirmation page should be displayed

        Scenario: Payment is declined
            Given the user has entered valid checkout information
             When the user submits payment using an invalid payment method
             Then the payment should be declined
              And an appropriate error message should be displayed
              And the order should not be created

        Scenario: User returns to cart from checkout
            Given the user is on the checkout page
             When the user clicks "Back to Cart"
             Then the shopping cart page should be displayed
              And all cart items should remain unchanged

        Scenario: Successful order placement
            Given the user has completed payment successfully
             When the order is submitted
             Then an order number should be generated
              And an order confirmation message should be displayed
              And the cart should be emptied

        Scenario: User attempts checkout with an empty cart
            Given the shopping cart is empty
             When the user navigates to the checkout page
             Then checkout should not be allowed
              And the user should be redirected to the shopping page

        Scenario: Checkout information persists after page refresh
            Given the user has entered checkout information
             When the user refreshes the checkout page
             Then the entered information should remain available
              And the order summary should remain accurate

        Scenario: Checkout total matches cart total
            Given the shopping cart contains multiple products
             When the user proceeds to checkout
             Then the subtotal should be displayed correctly
              And applicable taxes should be calculated correctly
              And shipping charges should be displayed correctly
              And the final total should equal:
                Subtotal + Taxes + Shipping
