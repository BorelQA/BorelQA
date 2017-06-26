require 'capybara/rspec'

When(/^I selected item "([^\"]*)" in drop down "([^\"]*)"$/) do |value, indetification|
	select value, :from => indetification
end

When(/^I selected class "([^\"]*)" in drop down "([^\"]*)"$/) do |item|
	select item "$('div[class=#{item}]').click()"
end

When(/^I selected item "([^\"]*)" name drop down "([^\"]*)"$/) do |name, item|
	select item "$('select[name=#{item}]').click()"
end

When(/^I select option "([^\"]*)" in selectize "([^\"]*)"$/) do |option, id|
	select_option id, option
end

When(/^I select radio button "([^\"]*)"$/) do |identification|
	identification.split("|").each do |field|
		page.choose(field.strip)
	end
end

When(/^I select radio button by id "([^\"]*)"$/) do |id|
	page.execute_script "$('#{id}').click().click()"
end

When(/^I select radio button "([^"]*)" by value "([^"]*)"$/) do |name, value|
	page.execute_script "$('input[name=#{name}][value=\"#{value}\"]').click().click()"
end


When(/^I select check box by id "([^\"]*)" is check$/) do |identification|
	identification.split("|").each do |field|
		page.find(:id, field.strip).set(true)
	end
end

When(/^I click checkbox by id "([^\"]*)"$/) do |identification|
	identification.split("|").each do |field|
		page.find(:id, field.strip).click
	end
end

When(/^I select last checkbox by name "([^\"]*)"$/) do |name|
	page.execute_script "$('input[name=#{name}]:last').click()"
end

When(/^I select checkbox by id "([^\"]*)"$/) do |identification|
	page.execute_script "$('input[#{item}]:click().click()"
end

When(/^I select "([^\"]*)" checkbox by name "([^\"]*)"$/) do |qty, name|
	page.execute_script "for(var i = '#{qty}'; i >= 0; i--) { $('input[name=#{name}]').eq($('input[name=#{name}]').length - i).click() }"
end


When(/^I select check box by id "([^\"]*)" is uncheck$/) do |identification|
	identification.split("|").each do |field|
		find(:id, field.strip).set(false)
	end
end
