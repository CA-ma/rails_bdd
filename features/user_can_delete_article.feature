Feature: User can delete article
    As a publisher,
    To keep the list of articles current,
    I want to delete old articles.

Background:
    Given I visit the landing page    
    And I click "Sign Up"
    And I fill in "Email" with "useremail@email.com"
    And I fill in "Password" with "userpassword"
    And I fill in "Password confirmation" with "userpassword"
    And I click "Sign up"
    When I click "New Post"
    And I fill in "Title" with "New article title"
    And I fill in "Content" with "New article content"
    And I click "Create Article"
    And I click "Home"

Scenario: [Happy path] Create and delete and article
    When I click "Home"
    And I click "Delete"
    Then I should not see "New article title"
    And I should not see "New article content"
