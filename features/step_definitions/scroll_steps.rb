require 'capybara/rspec'

When(/^I scroll page$/) do
	page.execute_script "window.scrollBy(0,500)"
end