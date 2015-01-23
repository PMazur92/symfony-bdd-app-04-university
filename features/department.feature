Feature: I would like to edit department

  Scenario Outline: Insert records
    Given I am on homepage
    And I follow "Login"
    And I fill in "Username" with "admin"
    And I fill in "Password" with "password"
    And I press "Login"
    And I go to "/admin/department"
    Then I should not see "<name>"
    And I follow "Create a new entry"
    Then I should see "Department creation"
    When I fill in "Name" with "<name>"
    And I press "Create"
    Then I should see "<name>"

  Examples:
    | name                             |
    | DEPARTMENT RECORD Mathematics    |
    | DEPARTMENT RECORD Informatics    |
    | DEPARTMENT RECORD Physics        |


  Scenario Outline: Edit records
    Given I am on homepage
    And I follow "Login"
    And I fill in "Username" with "admin"
    And I fill in "Password" with "password"
    And I press "Login"
    And I go to "/admin/department"
    Then I should not see "<new-name>"
    When I follow "<old-name>"
    Then I should see "<old-name>"
    When I follow "Edit"
    And I fill in "Name" with "<new-name>"
    And I press "Update"
    And I follow "Back to the list"
    Then I should see "<new-name>"
    And I should not see "<old-name>"

  Examples:
    | old-name                         | new-name                        |
    | DEPARTMENT RECORD Mathematics    | NEW DEPARTMENT RECORD Chemistry |


  Scenario Outline: Delete records
    Given I am on homepage
    And I follow "Login"
    And I fill in "Username" with "admin"
    And I fill in "Password" with "password"
    And I press "Login"
    And I go to "/admin/department"
    Then I should see "<name>"
    When I follow "<name>"
    Then I should see "<name>"
    When I press "Delete"
    Then I should not see "<name>"

  Examples:
    |  name                            |
    | DEPARTMENT RECORD Informatics    |
    | DEPARTMENT RECORD Physics        |
    | NEW DEPARTMENT RECORD Chemistry  |