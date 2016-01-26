Feature: Send status response
	As a service
	Given functional monitoring agent
	And a functional status
	When a functional monitoring agent queries my functional status
	In order to accurately convey my functional status in my role as a dependency to another service
	I want to send a status response to the functional monitoring agent

	Scenario: Response sent
		Given functional monitoring agent
		And functional status
		When the functional monitoring agent queries my functional status
		Then I send a response indicating the functional status to the functional monitoring agent

	Scenario: No service
		Given no service
		And functional monitoring agent
		And functional status
		When the functional monitoring agent queries my functional status 
		Then I send a "service unavailable" notification

	Scenario: Functional status not determined
		Given functional status can not be determined
		And functional monitoring agent
		When the functional monitoring agent queries my functional status
		Then I send "functional status could not be determined" notification
		