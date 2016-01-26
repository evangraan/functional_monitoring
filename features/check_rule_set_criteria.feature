Feature: Check whether rule set's criteria was met
	As a functional monitoring agent
	Given measurement
	And rule 
	When I have queried a service and its dependencies
	In order to arrive at a functional status
	I want to check whether the rule set's criteria was met

	Scenario: No rule
		Given no rule
		And measurement
		When I have queried a service and its dependencies
		Then I send 'no rule' error notification

	Scenario: No measurement
		Given no measurement
		And rule
		When I have queried a service and its dependencies
		Then I send 'no measurement' error notification

	Scenario: No rule and no measurement
		Given no rule
		And no measurement
		When I have queried a service and its dependencies
		Then I send 'no measurement and no rule' error notification

	Scenario: Measurement and rule evaluated
		Given measurement
		And rule
		When I have queried a service and its dependencies
		Then I arrive at a functional status

	Scenario: Arrived at functional status
		Given functional status
		And service
		And purpose
		And provisioner
		When I have arrived at functional status
		Then I send a notification to the provisioner

	Scenario: Rule evaluated with measurement
		Given rule
		And measurement
		And I have used measurement to interpret rule
		When I need to present a functional status
		Then I apply the rule set to the functional status
		