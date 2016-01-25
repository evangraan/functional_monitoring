Feature: Select strategy from service
	As a functional monitoring agent
	Given service
	And another service
	And purpose
	And rule set
	When I need to choose which service to select the strategy from
	Then I select the strategy from one of the services

	Scenario: One service selected for strategy
		Given service
		And another service
		And an indication of using the first service for strategy
		And purpose
		And rule set
		When I have been asked to monitor 
		Then I select strategy from that service

	Scenario: Unable to retrieve strategy from one service
		Given service
		And another service
		And purpose
		And rule set
		When I have failed to retrieve strategy from one service
		Then I select strategy from the other service