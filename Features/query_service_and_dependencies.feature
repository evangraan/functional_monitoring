Feature: Query service and its dependencies
	As a functional monitoring agent
	Given Strategy
	And service
	And dependencies
	And rule set
	When I have selected an appropriate strategy
	In order to accurately convey functional status
	I want to query the service and its dependencies

	Scenario: Valid strategy, service, dependencies, and rule set
		Given strategy
		And service
		And dependencies
		And rule set
		When I have selected an appropriate strategy
		Then I send functional status

	Scenario: No strategy
		Given no strategy
		And service
		And dependencies
		And rule set
		When I have selected an appropriate strategy
		Then I send "no strategy" error notification

	Scenario: No service
		Given no service
		And stragey
		And dependencies
		And rule set
		When I have selected an appropriate strategy
		Then I send "no service" error notification		

	Scenario: No rule set
		Given no rule set
		And strategy
		And service
		And dependencies
		When I have selected an appropriate strategy
		Then I send "no rule set" error notification		

	Scenario: Unexpected outcome
		Given notifications
		And errors
		When I have queried the service and its dependencies
		Given unexpected outcomes
		When I apply the rule set to unexpected outcomes
		Then I arrive at a functional status