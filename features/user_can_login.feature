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

    Scenario: [Happy Path] User logs into the site with a username and password, makes an article, then cannot see it when logged out.
        When I click "Login"
        And I fill in "Email" with "useremail@email.com"
        And I fill in "Password" with "userpassword"
        And I click "Log in"
        And I click "New Post"
        And I fill in "Title" with "This is a title."
        And I fill in "Content" with "This is the content of an article."
        And I click "Create Article"
        And I click "Home"
        And I click "Logout"
        Then I should not see "This is a title."
        And I should not see "This is the content of an article."

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