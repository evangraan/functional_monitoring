Feature: Monitor a service's functional status
	As a functional monitoring agent
	Given mappings between service purposes 
	And rule sets 
	And monitoring strategies
	When I have been asked to monitor a service's functional status
	In  order to accurately convey the functional status
	I want to monitor the functional status

	Scenario: No mappings between service purposes
		Given no mappings between service purposes
		And rule sets
		And monitoring strategies
		When I have been asked to monitor a service's functional status
		Then I send "no mappings between service purposes" notification

	Scenario: No rule sets
		Given no rule sets
		And mappings between service purposes
		And monitoring strategies
		When I have been asked to monitor a service's functional status
		Then I send "no rule sets" notification

	Scenario: Unable to retrieve monitoring strategy from service registry
		Given no monitoring strategies
		And mappings between service purposes
		And rule sets
		When I have been asked to monitor a service's functional status
		Then I send "unable to retrieve monitoring strategy from service registry" notification

#	Scenario: Unable to retrieve monitoring strategy from configuration UI
#		Given no monitoring strategies
#		And mappings between service purposes
#		And rule sets
#		When I have been tasked to monitor a service's functional status
#		Then I send "unable to retrieve monitoring strategies from configuration ui" notification

#	Scenario: Unable to use monitoring strategy from functional monitoring framework
#		Given no monitoring strategies
#		And mappings between service purposes
#		And rule sets
#		When I have been tasked to monitor a service's functional status
#		Then I send "unable to use monitoring strategy from functional monitoring framework" notification

	Scenario: Valid mappings, rule sets and monitoring strategy
		Given mappings between service purposes 
		And rule sets 
		When I have been asked to monitor a service's functional status
		Given I have successfully retrieved strategy from the service registry
		And I have used strategy to arrive at functional status
		Then I send the functional status
