Given(/^no strategy preference$/) do
  @test.given_no_strategy_preference
end

When(/^I am bootstrapped$/) do
  @test.bootstrapped_functional_monitoring_agent
end

Then(/^I notify 'no strategy preference'$/) do
  expect(@test.has_received_notification?('no strategy preference')).to eq(true)
end

Given(/^a valid strategy preference$/) do
  @test.given_valid_strategy_preference
end

Then(/^I remember the strategy preference$/) do
  expect(@test.has_remembered_strategy_preference?).to eq(true)
end

Given(/^invalid strategy preference$/) do
  @test.given_invalid_strategy_preference
end

Then(/^I notify 'invalid strategy preference'$/) do
  expect(@test.has_received_notification?('invalid_strategy_preference')).to eq(true)
end
