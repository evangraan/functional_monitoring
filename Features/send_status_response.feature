Feature: Send status response
	As a service
	Given another service
	And a functional status
	When a functional monitoring agent queries my functional status
	In order to accurately convey my functional status in my role as a dependency to another service
	I want to send a status response to the functional monitoring agent

	Scenario: Response sent
		Given another service
		And functional status
		When a functional monitoring agent queries my functional status
		Then I send a response indicating the functional status to the functional monitoring agent

	Scenario: No service provided
		Given no service
		And functional status
		When a functional monitoring agent queries my functional status 
		Then I send a "service unavailable" notification

	Scenario: Functional status not deterned
		Given functional status can not be determined
		And another service
		When a functional monitoring agent queries my functional status 
		Then I send "functional status could not be determined" notification