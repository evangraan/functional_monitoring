Given(/^functional monitoring agent$/) do
	@test.given_functional_monitoring_agent
end

Given(/^functional status$/) do
	@test.given_functional_status
end

When(/^the functional monitoring agent queries my functional status$/) do
	@test.query_functional_status
end

Then(/^I send a response indicating the functional status to the functional monitoring agent$/) do
	expect(@test.has_sent_response_indicating_functional_status?).to eq(true)
end

Given(/^no service$/) do
	@test.given_no_service
end

Then(/^I send a 'service unavailable' notification$/) do
	expect(@test.has_sent_notification?('service unavailable')).to eq(true)
end

Given(/^functional status cannot be determined$/) do
	@test.given_functional_status_cannot_be_determined
end

Then(/^I send 'functional status could not be determined' notification$/) do
	expect(@test.has_sent_notification?('functional status could not be determined')).to eq(true)
end
