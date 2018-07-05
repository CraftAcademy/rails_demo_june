Feature: Allow user to create an article
 

 Scenario: User submits a form and creates an article
    Given I visit the site
    And I click on "Create Article"
    And I fill in "Title" with "My awesome article"
    And I fill in "Content" with "My awesome content"
    #Then show me the page
    And I click on "Create Article"
    Then there should be an new article in the database
    And I should see "Your article has been created"


