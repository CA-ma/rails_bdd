Feature: The webpage has an attractive and descriptive theme
"As a user,
in order to enjoy using the site,
I want each page to have useful page headers, layouts centered on the screen, and a splash page."

  Background: Visit the site
    When I visit the landing page
    And I should see "Home"
    And I should see "Sign Up"
    And I should see "Login"
    And I should see "An article posting site for the people"
    And I click "Sign Up"
    And I fill in "Email" with "useremail@email.com"
    And I fill in "Password" with "userpassword"
    And I fill in "Password confirmation" with "userpassword"
    And I click "Sign up"

  Scenario: Visit the home page
    Then I should see "Articles feed"
    And I should see "Find all the latest articles right here."

  Scenario: Make a new post
    When I click "Create"
    Then I should see "Create and post a new article"
    And I should see "Please use a specific title and include poignant content.  Whatever you like, really!"

  Scenario: Show an existing post with comments
    When I click "See comments"
    Then I should see "Published article"
    And I should see "Read a comment.  Leave a comment.  Please be nice."
  
  Scenario: Edit an existing post
    When I click "Edit"
    Then I should see "Edit an existing article"
    And I should see "Leave an update as things change in real time."