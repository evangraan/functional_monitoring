Given(/^functional monitoring framework$/) do
  @test.given_functional_monitoring_framework
end

Given(/^rule set$/) do
  @test.given_rule_set
end

Given(/^strategy$/) do
  @test.given_strategy
end

When(/^I need to present my functional status$/) do
  @test.present_functional_status
end

Then(/^I use the functional monitoring framework$/) do
  expect(@test.have_used_functional_monitoring_framework?).to eq(true)
end

Given(/^no purpose$/) do
  @test.given_no_purpose
end

Then(/^I send 'no purpose' notification to the functional monitoring agent$/) do
  expect(@test.has_sent_notification?('no purpose')).to eq(true)
end

Given(/^no strategy$/) do
  @test.given_no_strategy
end

Then(/^I send 'no strategy found' notification to the functional monitoring agent$/) do
  expect(@test.has_sent_notification?('no strategy found')).to eq(true)
end

Given(/^no rule set$/) do
  @test.given_no_rule_set
end

Then(/^I send 'no rule set' notification to the functional monitoring agent$/) do
  expect(@test.has_sent_notification?('no rule set')).to eq(true)
end
