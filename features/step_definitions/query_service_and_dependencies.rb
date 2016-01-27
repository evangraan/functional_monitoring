Given(/^dependencies$/) do
  @test.given_dependencies
end

When(/^I have selected an appropriate strategy$/) do
  @test.selected_appropriate_strategy
end

Then(/^I take measurements according to the strategy$/) do
  expect(@test.measurements_according_to_strategy_taken?).to eq(true)
end

Then(/^I send 'no strategy' notification$/) do
  expect(@test.has_sent_notification?('no strategy')).to eq(true)
end

Then(/^I send 'no service' notification$/) do
  expect(@test.has_sent_notification?('no service')).to eq(true)
end

Then(/^I send 'no rule set' notification$/) do
  expect(@test.has_sent_notification?('no rule set')).to eq(true)
end

Given(/^notifications$/) do
  @test.given_notifications
end

Given(/^errors$/) do
  @test.given_errors
end

When(/^I have queried the service and its dependencies$/) do
  @test.queried_service_and_dependencies
end

Given(/^unexpected outcomes$/) do
  @test.given_unexpected_outcomes
end

When(/^I apply the rule set to unexpected outcomes$/) do
  @test.apply_rule_set_to_unexpected_outcomes
end

Then(/^I take measurements of the unexpected outcomes$/) do
  expect(@test.measurements_of_unexpected_outcomes_taken?).to eq(true)
end
