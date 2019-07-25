Feature: Create articles
  "As a publisher
  In order to add relevant content to my news service,
  I would like to be able to create articles."

  Background:
    Given I visit the landing page
    When I click "New Post"

  Scenario: [Happy Path] Successfully create an article
    When I fill in "Title" with "New article title"
    And I fill in "Content" with "New article content"
    And I click "Create Article"
    Then I should be on "New article title" page
    And I should see "Article was successfully posted."
    And I should see "New article title"
    And I should see "New article content"

  Scenario: [Sad Path] Publisher doesn't enter a title for the article
    When I fill in "Content" with "New article content"
    And I click "Create Article"
    Then I should see "Title can't be blank"

  Scenario: [Sad Path] Publisher doesn't enter content for the article
    When I fill in "Title" with "New article title"
    And I click "Create Article"
    Then I should see "Content can't be blank"
