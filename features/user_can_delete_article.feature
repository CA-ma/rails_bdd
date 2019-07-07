Feature: User can delete article
    As a publisher,
    To keep the list of articles current,
    I want to delete old articles.

Background:
    Given I visit the landing page
    When I click "Post new article"
    And I fill in "Title" with "New article title"
    And I fill in "Content" with "New article content"
    And I click "Create Article"

Scenario: [Happy path] Create and delete and article
    When I click "Articles"
    And I click "Delete"
    Then I should not see "New article title"
    And I should not see "New article content"
