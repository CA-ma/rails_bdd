Feature: User can login
As a User,
In order to view articles,
I want to log in to give me permission to view articles.

    Background:
        When I visit the landing page
        And I click "Sign Up"
        And I fill in "Email" with "useremail@email.com"
        And I fill in "Password" with "userpassword"
        And I fill in "Password confirmation" with "userpassword"
        And I click "Sign up"
        And I click "Logout"

    Scenario: [Happy Path] User logs into the site with a username and password
        When I click "Login"
        And I fill in "Email" with "useremail@email.com"
        And I fill in "Password" with "userpassword"
        And I click "Log in"
        Then I should see "Signed in successfully."

    Scenario: [Sad Path] User submits incorrect username and password combination - missing username
        When I click "Login"
        And I fill in "Email" with ""
        And I fill in "Password" with "userpassword"
        And I click "Log in"
        Then I should see "Invalid Email or password."

    Scenario: [Sad Path] User submits incorrect username and password combination - incorrect username
        When I click "Login"
        And I fill in "Email" with "usremail@email.com"
        And I fill in "Password" with "userpassword"
        And I click "Log in"
        Then I should see "Invalid Email or password."

    Scenario: [Sad Path] User submits incorrect username and password combination - missing password
        When I click "Login"
        And I fill in "Email" with "useremail@email.com"
        And I fill in "Password" with ""
        And I click "Log in"
        Then I should see "Invalid Email or password."

    Scenario: [Sad Path] User submits incorrect username and password combination - incorrect password
        When I click "Login"
        And I fill in "Email" with "useremail@email.com"
        And I fill in "Password" with "usrpassword"
        And I click "Log in"
        Then I should see "Invalid Email or password."