require 'capybara/rspec'

When(/^I attach file "([^\"]*)" in path "([^\"]*)"$/) do |file, path|
	attach_file(file, File.expand_path(path))
end
