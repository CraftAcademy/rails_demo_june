Feature: List articles on the index page of the service

    As a Visitor
    In order to be able to read some interesting news
    I would like to see a list of articles as soon as I visit the site

    Background:
        Given the following articles exist in our database
            | title                      | 
            | Almedalen 2018 has started | 
            | Moderaterna talar          | 

    Scenario: View list of articles on index page
        When I visit the site
        Then I should see "Almedalen 2018 has started"
        And I should see "Moderaterna talar"


