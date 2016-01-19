Feature: Query a service's functional status
	As a service
	Given another service
	And a functional status
	When a functional monitoring agent queries my functional status
	In order to accurately convey my functional status in my role as a dependency to another service
	I want to send a status response to the functional monitoring agent

	#Response sent(service, functional status)
	#
	Scenario: Response sent
		Given another service
		And functional status
		When a functional monitoring agent queries my functional status
		Then I send a response indicating the functional status and the 

	Scenario: Response not sent
		Given no service
		And functional status
		When a functional monitoring agent queries my functional status 
		Then I send a "service unavailable" notification

	Scenario: Detailed response sent
		Given measurements
		And Thresholds
		When a functional monitoring agent requests the details of my functional status
		Then I send a detailed result to the functional monitoring agent
