Feature: Determining functional status for a purpose
	As a provisioner
	Given the functional monitoring agent 
	And purpose 
	When I am interested in consuming a service
	In order check whether this service supports the functionality that I am interested in
	I want to query a functional monitoring agent associated with the service

	
	#ask(#no uri, #invalid uri, #purpose(no purpose, invalid purpose, valid purpose))
	#response(identifier, purpose, some func status (eg. any value greater than zero or zero if you can't), freshness of the ans(synchronized, interval guarantee, no guarantee, best effort), )
	#error
	#which answer?
	#what does the ans look like?
	#TBD:requested func status for purpose got response > 0, consumed the service and got a failure

	Scenario: No identifier
		As a provisioner
		Given no identifier
		And purpose
		When I request functional status
		Then I receive "no identifier" notification

	Scenario: Invalid identifier
		As a provisioner
		Given invalid identifier
		And purpose
		When I request functional status
		Then I receive "invalid identifier" notification

	Scenario: Valid identifier
		As a provisioner
		Given valid identifier
		And purpose
		When I request functional status
		Then I receive functional status

	Scenario: No purpose
		As a provisioner
		Given no purpose
		And identifier
		When I request functional status
		Then I receive "no purpose" notification

	Scenario: Invalid purpose
		As a provisioner
		Given invalid purpose
		And identifier
		When I request functional status
		Then I receive "invalid purpose" notification

	Scenario: Valid purpose
		As a provisioner
		Given valid purpose
		And identifier
		When I request functional status
		Then I receive "valid purpose" notification