Feature: User can login
As a User,
In order to view articles,
I want to log in to give me permission to view articles.

    Background:
        When I visit the site
        etc...

    Scenario: [Happy Path] User logs into the site with a username and password
        When I click "Login"
        And I fill in "Username" with "maxaubain"
        And I fill in "Password" with "maxPass1"
        And I click "Submit"
        Then I should see "Your login is successful."

    Scenario: [Sad Path] User submits incorrect username and password combination - missing username
        When I click "Login"
        And I fill in "User name" with ""
        And I fill in "Password" with "maxPass1"
        And I click "Submit"
        Then I should see "Invalid username or password."

    Scenario: [Sad Path] User submits incorrect username and password combination - incorrect username
        When I click "Login"
        And I fill in "User name" with "mataubain"
        And I fill in "Password" with "maxPass1"
        And I click "Submit"
        Then I should see "Invalid username or password."

    Scenario: [Sad Path] User submits incorrect username and password combination - missing password
        When I click "Login"
        And I fill in "User name" with "maxaubain"
        And I fill in "Password" with ""
        And I click "Submit"
        Then I should see "Invalid username or password."

    Scenario: [Sad Path] User submits incorrect username and password combination - incorrect password
        When I click "Login"
        And I fill in "User name" with "maxaubain"
        And I fill in "Password" with "maxPass2"
        And I click "Submit"
        Then I should see "Invalid username or password."