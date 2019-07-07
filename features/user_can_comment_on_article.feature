Feature: User can comment on article
    As a visitor of the article site,
    To have a conversation about an article,
    I want to be able to leave a comment.

Background: 
    Given I visit the landing page
    When I click "Post new article"
    And I fill in "Title" with "New article title"
    And I fill in "Content" with "New article content"
    And I click "Create Article"

Scenario: [Success path] User leaves a comment
    When I click on "Show"
    And I fill in "Commenter" with "Mr. Commenter"
    And I fill in "Body" with "This is a comment"
    And I click on "Save Comment"
    Then I should see "Mr. Commenter"
    And I should see "This is a comment"
    #And I should not see "There are no comments for this article."

Scenario: [Failure path] User does not leave name
    When I click on "Show"
    And I fill in "Commenter" with " "
    And I fill in "Body" with "This is a comment"
    And I click on "Save Comment"
    Then I should see "Commenter can't be blank"

Scenario: [Failure path] User does not leave comment
    When I click on "Show"
    And I fill in "Commenter" with "Mr. Commenter"
    And I fill in "Body" with " "
    And I click on "Save Comment"
    Then I should see "Comment can't be blank"