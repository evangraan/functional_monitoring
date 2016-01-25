Feature: Push status information to functional monitoring agent
	As a service
	Given service
	And functional status information#And notifications
	When I need to send the appropriate status information to the functional monitoring agent
	In order to accurately convey my functional status in my role as a dependency to another service
	I want to push status information to the functional monitoring agent

	Scenario: Status information sent
		Given service
		And functional status
		When I need to present functional status information
		Then I push status information to the functional monitoring agent

	#Scenario: Other service not available
		#Given no service
		#And functional status
		#When I need to present functional status information
		#Then I send "service unavailable" notification to the functional monitoring agent