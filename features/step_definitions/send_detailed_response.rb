Given(/^measurement$/) do
  @test.given_measurement
end

Given(/^rule$/) do
  @test.given_rule
end

Given(/^I have used measurement to interpret rule$/) do
  @test.given_interpreted_rule_with_measurement
end

Given(/^I have applied the rule set to the functional status to get a result$/) do
  @test.given_have_applied_rule_set_to_functional_status
end

When(/^a functional monitoring agent requests the details of my functional status$/) do
  @test.request_functional_status_details
end

Then(/^I send result to the functional monitoring agent$/) do
  expect(@test.has_sent_result?).to eq(true)
end

Given(/^no rule$/) do
  @test.given_no_rule
end

Then(/^I send 'no rule specified' notification to the functional monitoring agent$/) do
  expect(@test.has_received_notification?('no rule specified')).to eq(true)
end

Given(/^no measurement$/) do
  @test.given_no_measurement
end

Then(/^I send 'no measurement provided' notification to the functional monitoring agent$/) do
  expect(@test.has_received_notification?('no measurement provided')).to eq(true)
end
