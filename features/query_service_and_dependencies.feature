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
		Then I take measurements according to the strategy

	Scenario: No strategy
		Given no strategy
		And service
		And dependencies
		And rule set
		When I have selected an appropriate strategy
		Then I send 'no strategy' notification

	Scenario: No service
		Given no service
		And strategy
		And dependencies
		And rule set
		When I have selected an appropriate strategy
		Then I send 'no service' notification		

	Scenario: No rule set
		Given no rule set
		And strategy
		And service
		And dependencies
		When I have selected an appropriate strategy
		Then I send 'no rule set' notification		

	Scenario: Unexpected outcome
		Given notifications
		And errors
		When I have queried the service and its dependencies
		Given unexpected outcomes
		When I apply the rule set to unexpected outcomes
		Then I take measurements of the unexpected outcomes
		