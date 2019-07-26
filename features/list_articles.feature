Feature: List articles on the landing page
  "As a visitor,
  When I visit the landing page of the application,
  I would like to see a list of all articles."

  Scenario: [Happy path] View list of articles on the landing page
    Given the following articles exists
      | title                | content                          |
      | A breaking news item | Some really breaking action      |
      | Learn Rails 5        | Build awesome rails applications |
    When I visit the landing page
    And I click "Sign Up"
    And I fill in "Email" with "useremail@email.com"
    And I fill in "Password" with "userpassword"
    And I fill in "Password confirmation" with "userpassword"
    And I click "Sign up"
    Then I should see "A breaking news item"
    And I should see "Some really breaking action"
    And I should see "Learn Rails 5"
    And I should see "Build awesome rails applications"