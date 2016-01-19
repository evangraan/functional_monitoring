Feature: Check whether rule set's criteria was met
	As a functional monitoring agent
	Given measurement
	And threshold
	When I have queried a service and its dependencies
	In order to arrive at a functional status
	I want to check whether the rule set's criteria was met

	Scenario: No threshold
		Given no threshold
		And measurement
		When I have queried a service and its dependencies
		Then I send "no threshold" error notification

	Scenario: No Measurement
		Given no measurement
		And threshold
		When I have queried a service and its dependencies
		Then I send "no measurement" error notification

	Scenario: No threshold and no measurement
		Given no threshold
		And no measurement
		When I have queried a service and its dependencies
		Then I send "no measurement and no threshold" error notification

	Scenario: Measurement and threshold evaluated
		Given measurement
		And threshold
		When I have queried a service and its dependencies
		Then I arrive at a functional status

	Scenario: Arrived at functional status
		Given functional status
		And service
		And purpose
		And provisioner
		When I have arrived at functional status
		Then I send a notification to the provisioner