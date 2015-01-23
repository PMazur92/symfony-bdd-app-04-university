Feature: Main menu

    Scenario: List of hyperlinks
      Given I am on homepage
        And I follow "Login"
        And I fill in "Username" with "admin"
        And I fill in "Password" with "password"
        And I press "Login"
        And I go to homepage
       Then the "nav" element should contain "department"
        And the "nav" element should contain "room"
        And the "nav" element should contain "cathedral"
        And the "nav" element should contain "employee"  
       When I follow "Logout"
       Then the "nav" element should not contain "department"
        And the "nav" element should not contain "room" 
        And the "nav" element should not contain "cathedral" 
        And the "nav" element should not contain "employee" 