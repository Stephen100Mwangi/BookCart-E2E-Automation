Feature: Login functionality

              Authorized users should be able to log in successfully with valid credentials, while unauthorized users should receive appropriate error messages.

        Scenario: Successful login with valid credentials
            Given the user is on the login page
             When the user enters valid username and password
              And clicks the login button
             Then the user should be redirected to the dashboard
              And a welcome message should be displayed

        Scenario: Unsuccessful login with invalid credentials
            Given the user is on the login page
             When the user enters invalid username or password
              And clicks the login button
             Then an error message should be displayed indicating invalid credentials

        Scenario: Unsuccessful login with empty fields
            Given the user is on the login page
             When the user leaves the username and password fields empty
              And clicks the login button
             Then an error message should be displayed indicating that fields cannot be empty

