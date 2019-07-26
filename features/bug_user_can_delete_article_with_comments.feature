Feature: User can delete an article with comments
  "As a user,
  In order to keep the articles relevant,
  I would like to delete articles, even if they have comments."


  Background: 
    Given the following articles exists
      | title                | content                          |
      | A breaking news item | Some really breaking action      |
    When I visit the landing page
    And I click "Sign Up"
    And I fill in "Email" with "useremail@email.com"
    And I fill in "Password" with "userpassword"
    And I fill in "Password confirmation" with "userpassword"
    And I click "Sign up"

  Scenario: User adds comments and then deletes article
    When I click "Comments"
    And I fill in "Commenter" with "Commenter"
    And I fill in "Email" with "email@gmail.com"
    And I fill in "Body" with "This is a comment."
    And I click "Create Comment"
    And I click "View"
    And I click "Delete"
    And I should not see "A breaking news item"