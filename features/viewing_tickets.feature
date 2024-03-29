Feature: Viewing tickets
In order to view the tickets for a project
As a user
I want to see them on that project's page

Background:
Given there are the following users:
  | email             | password |
  | user@ticketee.com | password |
And there is a project called "TextMate 2"
And "user@ticketee.com" has created a ticket for this project:
    | title           | description                   |
    |  Make it shiny! | Gradients! Starbursts! Oh my! |
  And there is a project called "Internet Explorer"
 And "user@ticketee.com" has created a ticket for this project:
    | title                | description   |
    | Standards compliance | Isnt a joke |
  And I am on the homepage

  Scenario: Viewing tickets for a given project
    When I follow "TextMate 2"
    Then I should see "Make it shiny!"
    And I should not see "Standards compliance"
    When I follow "Make it shiny!"
    Then I should see "Make it shiny"
    And I should see "Gradients! Starbursts! Oh my!"
  
    When I follow "Ticketee"
    And I follow "Internet Explorer"
    Then I should see "Standards compliance"
    And I should not see "Make it shiny!"
    When I follow "Standards compliance"
    Then I should see "Standards compliance"
    And I should see "Isnt a joke"