Feature: Products functionality

    Through this feature, user is able to view book products and perform search and filter functionalities

        Scenario: Verify access to the book product page
            Given the user has an active account
              And the user provides correct login credentials
             When the user is correctlylogged in
             Then the user should be redirected to theshopping cart page

        Scenario: Verify that search functionality works
            Given the user is on the shopping page
              And aproduct "Diary of a CEO" exists in the database
             When the user types in name of the product in the search bar
             Then that product should be shown and other products should not display

        Scenario: Verify that filter by category functionality works
            Given the user is on the shopping page
              And aproduct "Diary of a CEO" exists in the database
             When the user types in name of the product in the search bar
             Then that product should be shown and other products should not display

        Scenario: Verify that filter by price functionality works
            Given the user is on the shopping page
              And aproduct "Diary of a CEO" exists in the database
             When the user types in name of the product in the search bar
             Then that product should be shown and other products should not display

        Scenario: Display empty state when the database has no records
            Given the database contains no product records
             When the user navigates to the products page
             Then the user should see an empty state message "No books found."

        Scenario: Display empty state when a search yields no results
            Given the database contains active product records
             When the user searches for an invalid value "XYZ999!!!"
             Then the user should see an empty state message "No books found."