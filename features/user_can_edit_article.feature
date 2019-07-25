Feature: User can edit articles
  "As a publisher,
  In order to keep my content accurate,
  I would like to be able to edit my articles."

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

  Scenario: [Happy path] Edit an article
    When I click "Edit"
    And I fill in "Title" with "This is a new article title"
    And I fill in "Content" with "This is new article content"
    And I click "Update Article"
    Then I should be on "This is a new article title" page
    #And I should see "Article was successfully updated."
    And I should see "This is a new article title"
    And I should see "This is new article content"

  Scenario: [Sad Path] Publisher doesn't enter a title for the article edit
    When I click "Edit"
    And I fill in "Title" with " "
    And I fill in "Content" with "This is new article content"
    And I click "Update Article"
    Then I should see "Title can't be blank"

  Scenario: [Sad Path] Publisher doesn't enter content for the article edit
    When I click "Edit"
    And I fill in "Title" with "This is a new article title"
    And I fill in "Content" with " "
    And I click "Update Article"
    Then I should see "Content can't be blank"