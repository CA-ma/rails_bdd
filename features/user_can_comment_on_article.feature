Feature: User can comment on article
  "As a visitor of the article site,
  To have a conversation about an article,
  I want to be able to leave a comment."

  Background:
    Given I visit the landing page
    And I click "Sign Up"
    And I fill in "Email" with "useremail@email.com"
    And I fill in "Password" with "userpassword"
    And I fill in "Password confirmation" with "userpassword"
    And I click "Sign up"
    When I click "Create"
    And I fill in "Title" with "New article title"
    And I fill in "Content" with "New article content"
    And I click "Create Article"
    And I click "Welcome"


  Scenario: [Happy path] User leaves a comment
    When I click "Comments"
    And I fill in "Commenter" with "Mr. Commenter"
    And I fill in "Email" with "commenter@gmail.com"
    And I fill in "Body" with "This is a comment"
    And I click "Create Comment"
    Then I should see "Mr. Commenter"
    And I should see "commenter@gmail.com"
    And I should see "This is a comment"