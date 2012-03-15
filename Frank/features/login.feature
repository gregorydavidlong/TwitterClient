Feature: 
  As a user
  I want to log in to my Twitter account
  So I can access the application's features
  
  Scenario: Logging in
    Given I launch the app
	And I provide valid login details
	Then I should successfully login

  Scenario: Shouldn't see password
    Given I launch the app
	And I provide valid login details
	Then I should not see the password text
	