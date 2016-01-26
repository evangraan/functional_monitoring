Feature: Send detailed response
	As a service
	Given details such as measurements
	And rule
	When a functional monitoring agent requests the details of my functional status
	In order to accurately convey my functional status in my role as a dependency to another service
	I want to send a detailed result to the functional monitoring agent

	Scenario: Detailed response sent
		Given measurement
		And rule
		And I have used measurement to interpret rule
		And I have applied the rule set to the functional status to get a result
		When a functional monitoring agent requests the details of my functional status
		Then I send result to the functional monitoring agent

	Scenario: No rule specified
		Given no rule
		And measurement
		When a functional monitoring agent requests the details of my functional status
		Then I send "no rule specified" notification to the functional monitoring agent

	Scenario: No measurement
		Given no measurement
		And rule
		When a functional monitoring agent requests the details of my functional status
		Then I send "no measurement provided" notification to the functional monitoring agent
		