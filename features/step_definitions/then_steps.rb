require 'capybara/rspec'

Then(/^I wait for (\d+) seconds?$/) do |sec|
  sleep(sec.to_i)
end
