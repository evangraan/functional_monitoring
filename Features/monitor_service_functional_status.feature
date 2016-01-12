Feature: Monitor a service's functional status
	As a functional monitoring agent
	Given mappings between service purposes 
	And rule sets 
	And monitoring strategies
	When I have been tasked to monitor a service's functional status
	In  order to accurately convey the functional status
	I want to monitor the functional status

	Scenario: No mappings between service purposes
		Given no mappings between service purposes
		And rule sets
		And monitoring strategies
		When I have been tasked to monitor a service's functional status
		Then I send "no mappings between service purposes" notification

	Scenario: No rule sets
		Given no rule sets
		And mappings between service purposes
		And monitoring strategies
		When I have been tasked to monitor a service's functional status
		Then I send "no rule sets" notification

	Scenario: No monitoring strategies
		Given no monitoring strategies
		And mappings between service purposes
		And rule sets
		When I have been tasked to monitor a service's functional status
		Then I send "no monitoring strategies" notification

#	Scenario: No monitoring strategies
#		Given no monitoring strategies
#		And mappings between service purposes
#		And rule sets
#		When I have been tasked to monitor a service's functional status
#		Then I send "no monitoring strategies" notification

	Scenario: Valid mappings, rule sets and monitoring strategies
		Given mappings between service purposes 
		And rule sets 
		And monitoring strategies
		When I have been tasked to monitor a service's functional status
		Then I send the functional status