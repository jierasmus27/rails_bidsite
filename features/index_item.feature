Feature: see a list of all items
  In order to manage items
  As a user
  I want to see a list of items on the index page

  Background:
    Given the following items exist:
    | name            | description         |
    | Binoculars      | I can see!!!        |
    | Handlebars      | My bike incomplete  |
    And I am on the item index page
    Then I should see "Binoculars" and "Handlebars"
