Feature: The webpage has an attractive and descriptive theme
"As a user,
in order to enjoy using the site,
I want each page to a navbar that adjusts to my login status and is accessable at the top of the splash page and below the headers."

  Background: Visit the site
    Given the following articles exists
      | title                | content                          |
      | A breaking news item | Some really breaking action      |
    When I visit the landing page
    And I should see "Welcome"
    And I should see "Sign Up"
    And I should see "Login"
    And I should see "An article posting site"
    And I click "Sign Up"
    And I fill in "Email" with "useremail@email.com"
    And I fill in "Password" with "userpassword"
    And I fill in "Password confirmation" with "userpassword"
    And I click "Sign up"

  Scenario: Inspect the article listings
    Then I should see "xx"

  Scenario: Make a new post
    When I click "Create"
    Then I should see "xx"

  Scenario: Show an existing post with comments
    When I click "Comments"
    Then I should see "xx"
  
  Scenario: Edit an existing post
    When I click "Edit"
    Then I should see "xx"