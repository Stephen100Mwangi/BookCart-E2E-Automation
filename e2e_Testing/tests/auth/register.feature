Feature:Register Functionality
    Through this feature, user will be able to register to the application by providing valid credentials.

        Scenario: Register with valid credentials
            Given User is on the registration page
             When User enters valid credentials
              And User clicks on the register button
             Then User should be registered successfully and redirected to the login page

        Scenario: Register with invalid credentials
            Given User is on the registration page
             When User enters invalid credentials
              And User clicks on the register button
             Then User should see an error message indicating invalid registration details

        Scenario: Register with already existing email
            Given User is on the registration page
             When User enters an email that is already registered
              And User clicks on the register button
             Then User should see an error message indicating that the email is already in use

        Scenario: Register with missing required fields
            Given User is on the registration page
             When User leaves required fields empty
              And User clicks on the register button
             Then User should see an error message indicating that required fields are missing

        Scenario: Register with password mismatch
            Given User is on the registration page
             When User enters a password and a different confirm password
              And User clicks on the register button
             Then User should see an error message indicating that the passwords do not match

        Scenario: Register with weak password
            Given User is on the registration page
             When User enters a weak password that does not meet the security criteria
              And User clicks on the register button
             Then User should see an error message indicating that the password is too weak

