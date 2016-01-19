Feature: Remember functional status information
	As a functional monitoring agent
	Given service
	And functional status information
	And notifications
	When a service pushes status information to me
	In order to arrive at a functional status
	I want to remember the functional status information

	Scenario: service pushes functional status
		Given service
		And functional status information
		And notifications
		When a service pushes status information to me
		Then I save the functional status information

	