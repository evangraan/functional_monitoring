Feature: Push status information to functional monitoring agent
	As a service
	Given service
	And functional status information
	And notifications
	When I push status information to the functional monitoring agent
	In order to accurately convey my functional status in my role as a dependency to another service
	I want to send the appropriate status information to the functional monitoring agent

	Scenario: Status information sent
		Given functional status
		And notifications
		When I push status information to the functional monitoring agent
		Then I send status information to the functional monitoring agent

