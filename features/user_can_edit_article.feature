Feature: User can edit articles
    As a publisher,
    In order to keep my content accurate,
    I would like to be able to edit my articles.

Background:
    Given I visit the landing page
    When I click "Post new article"
    When I fill in "Title" with "New article title"
    And I fill in "Content" with "New article content"
    And I click "Save Article"
    And I click "Articles"

Scenario: [Success path] Edit an article
    When I click "Edit"
    And I fill in "Title" with "This is a new article title"
    And I fill in "Content" with "This is new article content"
    And I click "Save Article"
    And I should see "Article was successfully posted."
    And I should see "This is a new article title"
    And I should see "This is new article content"

#Scenario: [Failure path] Article is not changed?

#Scenario: [Failure path] Article is deleted?