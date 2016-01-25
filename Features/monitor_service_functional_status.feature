Feature: Monitor a service's functional status
	As a functional monitoring agent
	Given mappings between service purposes 
	And rule sets 
	And strategy
	When I have been asked to monitor a service's functional status
	In  order to accurately convey the functional status
	I want to monitor the functional status

	Scenario: No mappings between service purposes
		Given no mappings between service purposes
		And rule sets
		And strategy
		When I have been asked to monitor a service's functional status
		Then I send "no mappings between service purposes" notification to the provisioner

	Scenario: No rule sets
		Given no rule sets
		And mappings between service purposes
		And strategy
		When I have been asked to monitor a service's functional status
		Then I send "no rule sets" notification to the provisioner

	Scenario: Service registry chosen for strategy
		Given functional monitoring framework
		And indication of using the service registry for strategy
		And purpose
		And rule set
		When I have been asked to monitor a service's functional status
		Then I query the service registry for the strategies		

	Scenario: Unable to retrieve monitoring strategy from service registry
		Given service identifier
		And indication of using the service registry for strategy
		And failure retrieving service strategy from the service registry
		And mappings between service purposes
		And rule sets
		When I have been asked to monitor a service's functional status
		Then I send "unable to retrieve monitoring strategy from service registry" notification to the provisioner

	Scenario: Valid mappings, rule sets and monitoring strategy taken from service registry
		Given mappings between service purposes 
		And indication of using the service registry for strategy
		And service identifier
		And rule sets 
		And I have successfully retrieved strategy from the service registry
		And I have used strategy to arrive at functional status
		When I have been asked to monitor a service's functional status
		Then I send functional status to the provisioner

	Scenario: Monitoring a service's functional status
		Given functional monitoring framework
		And purpose
		And rule set
		And strategy
		And measurements
		When I have been asked to monitor a service's functional status
		Then I apply the rule set for the purpose, according to the strategy, to measurements, using the functional monitoring framework to arrive at functional status

	Scenario: Functional monitoring framework chosen for strategy
		Given functional monitoring framework
		And indication of using the functional monitoring framework for strategy
		And purpose
		And rule set
		When I have been asked to monitor a service's functional status
		Then I query the functional monitoring framework for the strategies		

	Scenario: Valid mappings, rule sets and monitoring strategy taken from functional monitoring framework
		Given functional monitoring framework
		And indication of using the functional monitoring framework for strategy		
		And mappings between service purposes
		And rule set
		And service identifier
		And I have successfully retrieved strategy from functional monitoring framework
		And I have used strategy to arrive at functional status
		When I have been asked to monitor a service's functional status
		Then I send functional status to the provisioner

	Scenario: Unable to retrieve monitoring strategy from functional monitoring framework
		Given functional monitoring framework
		And indication of using the functional monitoring framework for strategy
		And service identifier
		And failure retrieving service strategy from functional monitoring framework
		And mappings between service purposes
		And rule set
		When I have been asked to monitor a service's functional status
		Then I send "unable to retrieve monitoring strategy from functional monitoring framework" notification to the provisioner