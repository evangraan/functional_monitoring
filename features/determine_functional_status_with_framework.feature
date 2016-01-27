Feature: Use functional monitoring framework to determine functional status
	As a service
	Given functional monitoring framework
	And purposes
	And rule sets
	And strategies
	When I need to present my functional status
	In order to accurately convey my functional status in my role as a service
	I want to make use of the functional monitoring framework

	Scenario: Functional status determined
		Given functional monitoring framework
		And purpose
		And rule set
		And strategy
		When I need to present my functional status
		Then I use the functional monitoring framework

	Scenario: No purpose
		Given no purpose
		And functional monitoring framework
		And strategy
		When I need to present my functional status
		Then I send 'no purpose' notification to the functional monitoring agent

	Scenario: No strategy
		Given no strategy
		And functional monitoring framework
		When I need to present my functional status
		Then I send 'no strategy found' notification to the functional monitoring agent

	Scenario: No rule set
		Given no rule set
		And functional monitoring framework
		And strategy
		When I need to present my functional status
		Then I send 'no rule set' notification to the functional monitoring agent
