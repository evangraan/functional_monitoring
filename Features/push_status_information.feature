Feature: Push status information to functional monitoring agent
	As a service
	Given service
	And functional status information
	And notifications
	When I push status information to the functional monitoring agent
	In order to accurately convey my functional status in my role as a dependency to another service
	I want to send the appropriate status information to the functional monitoring agent

	Scenario: Status information sent
		Given functional status
		And notifications
		When I push status information to the functional monitoring agent
		Then I send status information to the functional monitoring agent

	# What are the conditions for sending status info to fma?
	# What must happen in order to send this?
	# How does service get notified of problem/condition?
	# What is the mechanism used to push this info and where is it pushed

	##service gets polled every interval to check its functional status
	##if 

	