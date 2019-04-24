Feature: Search

  Scenario: User searches for dataset title
    When a user visits the Data page
    And they search for the title of a dataset
    Then they see a list of search results
    And the search results are ordered by relevance
    And the dataset is in the results list

  Scenario: User searches for terms in dataset description
    When a user visits the Data page
    And they search for a term in the description of a dataset
    Then they see a list of search results
    And the search results are ordered by relevance
    And the dataset is in the results list

  Scenario: User searches using Lucene query syntax
    When a user visits the Data page
    And they search for "organization:ne AND title:agri"
    Then they see a list of search results
    And the search results are ordered by relevance
    And the search results are published by "Natural England"
    And the search results start with "agri"

  Scenario: User searches using the name of a geographical area
    When a user visits the Data page
    And they enter a search location
    Then they see a list of search results
    And the search results are ordered by relevance

  Scenario: User searches by drawing a box
    When a user visits the Data page
    And they draw a search box
    Then they see a list of search results
    And the search results are ordered by relevance