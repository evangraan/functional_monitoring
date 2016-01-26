Given(/^no mappings between service purposes$/) do
  @test.given_no_mappings_between_service_purposes
end

Given(/^rule sets$/) do
  @test.given_rule_sets
end

Given(/^strategy$/) do
  @test.given_strategy
end

When(/^I have been asked to monitor a service's functional status$/) do
  @test.asked_to_monitor_service_functional_status
end

Then(/^I send 'no mappings between service purposes' notification to the provisioner$/) do
  expect(@test.has_received_notification?('no mappings between service purposes')).to eq(true)
end

Given(/^no rule sets$/) do
  @test.given_no_rule_sets
end

Given(/^mappings between service purposes$/) do
  @test.given_mappings_between_service_purposes
end

Then(/^I send 'no rule sets' notification to the provisioner$/) do
  expect(@test.has_received_notification?('no rule sets')).to eq(true)
end

Given(/^functional monitoring framework$/) do
  @test.given_functional_monitoring_framework
end

Given(/^indication of using the service registry for strategy$/) do
  @test.given_indication_of_using_service_registry_for_strategy
end

Given(/^purpose$/) do
  @test.given_purpose
end

Given(/^rule set$/) do
  @test.given_rule_set
end

Then(/^I query the service registry for the strategy$/) do
  expect(@test.has_queried_service_registry_for_strategy?).to eq(true)
end

Given(/^service identifier$/) do
  @test.given_service_identifier
end

Given(/^failure retrieving service strategy from the service registry$/) do
  @test.given_failure_retrieving_service_strategy_from_service_registry
end

Then(/^I send 'unable to retrieve monitoring strategy from service registry' notification to the provisioner$/) do
  expect(@test.has_received_notification?('unable to retrieve monitoring strategy from service registry')).to eq(true)
end

Given(/^I have successfully retrieved strategy from the service registry$/) do
  @test.given_strategy_retrieved_from_service_registry
end

Given(/^I have used strategy to arrive at functional status$/) do
  @test.given_strategy_used_to_arrive_at_functional_status
end

Then(/^I send functional status to the provisioner$/) do
  expect(@test.has_sent_functional_status_to_provisioner?).to eq(true)
end

Given(/^measurements$/) do
  @test.given_measurements
end

Then(/^I apply the rule set for the purpose, according to the strategy, to measurements, using the functional monitoring framework to arrive at functional status$/) do
  expect(@test.has_applied_rule_set_to_measurements_using_functional_monitoring_framework)
end

Given(/^indication of using the functional monitoring framework for strategy$/) do
  @test.given_indication_of_using_functional_monitoring_framework_for_strategy
end

Then(/^I query the functional monitoring framework for the strategy$/) do
  expect(@test.has_queried_functional_monitoring_framework_for_strategy?).to eq(true)
end

Given(/^I have successfully retrieved strategy from functional monitoring framework$/) do
  @test.given_retrieved_strategy_from_functional_monitoring_framework
end

Given(/^failure retrieving service strategy from functional monitoring framework$/) do
  @test.given_failure_retrieving_strategy_from_functional_monitoring_framework
end

Then(/^I send 'unable to retrieve monitoring strategy from functional monitoring framework' notification to the provisioner$/) do
  expect(@test.has_received_notification?('unable to retrieve monitoring strategy from functional monitoring framework')).to eq(true)
end
