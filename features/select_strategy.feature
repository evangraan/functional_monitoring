Feature: Select strategy from service
	As a functional monitoring agent
	Given preference for selecting strategy
	When I need to choose where to select the strategy from
	Then I select the strategy from the URI provided by the preference

	Scenario: No preference provided
        Given no strategy preference
		When I am bootstrapped
		Then I notify 'no strategy preference'

	Scenario: Valid preference
        Given a valid strategy preference
		When I am bootstrapped
		Then I remember the strategy preference

	Scenario: Invalid preference provided
        Given invalid strategy preference
		When I am bootstrapped
		Then I notify 'invalid strategy preference'
