When(/^I have queried a service and its dependencies$/) do
  @test.queried_service_and_dependencies
end

Then(/^I send 'no rule' error notification$/) do
  expect(@test.has_sent_notification?('no rule')).to eq(true)
end

Then(/^I send 'no measurement' error notification$/) do
  expect(@test.has_sent_notification?('no measurement')).to eq(true)
end

Then(/^I send 'no measurement and no rule' error notification$/) do
  expect(@test.has_sent_notification?('no measurement and no rule')).to eq(true)
end

Then(/^I arrive at a functional status$/) do
  expect(@test.has_arrived_at_functional_status?).to eq(true)
end

Given(/^service$/) do
  @test.given_service
end

Given(/^purpose$/) do
  @test.given_purpose
end

Given(/^provisioner$/) do
  @test.given_provisioner
end

When(/^I have arrived at functional status$/) do
  @test.arrived_at_functional_status
end

Then(/^I send a notification to the provisioner$/) do
  expect(@test.has_sent_notification_to_provisioner?).to eq(true)
end

When(/^I need to present a functional status$/) do
  @test.present_functional_status
end

Then(/^I apply the rule set to the functional status$/) do
  expect(@test.applied_rule_set_to_functional_status?).to eq(true)
end
