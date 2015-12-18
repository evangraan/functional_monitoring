Feature: Query a service's functional status
	As a service
	Given another service
	And a functional status
	When a functional monitoring agent queries my functional status
	In order to accurately convey my functional status in my role as a dependency to another service
	I want to send a status response to the functional monitoring agent

	Scenario: