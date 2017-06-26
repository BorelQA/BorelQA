require 'capybara/rspec'

When(/^I enter text "([^\"]*)" into "([^\"]*)"$/) do |text, identification|
    fill_in(identification, :with => text)
end

When(/^I insert text "([^\"]*)" into "([^\"]*)"$/) do |text, identification|
	page.fill_in(identification, with: text)
end

When(/^I insert text "([^\"]*)" name "([^\"]*)"$/) do |text, name|
	page.fill_in(name, with: text)
end

When(/^I insert text "([^\"]*)" class "([^\"]*)"$/) do |text, item|
	page.fill_in(item, with: text)
end

When(/^I clear text in "([^\"]*)"$/) do |item|
	page.execute_script("$('#{item}').val('');")
end
