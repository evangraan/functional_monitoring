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
		Then I send "no mappings between service purposes" notification to the provisioner

	Scenario: No rule sets
		Given no rule sets
		And mappings between service purposes
		And monitoring strategies
		When I have been asked to monitor a service's functional status
		Then I send "no rule sets" notification to the provisioner

	Scenario: Unable to retrieve monitoring strategy from service registry
		Given no monitoring strategies
		And mappings between service purposes
		And rule sets
		When I have been asked to monitor a service's functional status
		Then I send "unable to retrieve monitoring strategy from service registry" notification to the provisioner

	Scenario: Valid mappings, rule sets and monitoring strategy
		Given mappings between service purposes 
		And rule sets 
		When I have been asked to monitor a service's functional status
		Given I have successfully retrieved strategy from the service registry
		And I have used strategy to arrive at functional status
		Then I send functional status to the provisioner

#	Scenario: Monitoring a service's functional status
#		Given purpose
#		And rule set
#		And strategy
#		When monitoring a service's functional status
#		Then I arrive at a functional status

	Scenario: Monitoring a service's functional status
		Given functional monitoring framework
		And purpose
		And rule set
		And strategy
		When monitoring a service's functional status
		Then I arrive at functional status
