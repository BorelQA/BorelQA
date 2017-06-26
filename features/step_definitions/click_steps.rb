require 'capybara/rspec'

When(/^I click item by id "([^\"]*)"$/) do |text|
	text.split("|").each do |field|
		page.find(:id, field.strip).click
	end
end

When(/^I click by id "([^\"]*)"$/) do |item|
	page.execute_script "//input$[('#{item}')]".click()   #(:id, "//li[@heading='#{field.strip}']").click
end

When(/^I click item by class "([^\"]*)"$/) do |item|
	text.split("|").each do |field|
		page.find(:class, field.strip).click
	end
end

When(/^I click button by id "([^\"]*)"$/) do |text|
	text.split("|").each do |field|
		page.find(:id, field.strip).click
	end
end

When(/^I click button by class "([^\"]*)"$/) do |text|
	text.split("|").each do |field|
		page.find(:class, field.strip).click
	end
end

When(/^I click item by name "([^\"]*)"$/) do |text|
	text.split("|").each do |field|
		page.find(:name, field.strip).click
	end
end

When(/^I click button by text "([^\"]*)"$/) do |text|
	text.split("|").each do |field|
		click_button(field.strip)
	end
end

When(/^I click link by text "([^\"]*)"$/) do |text|
	page.execute_script "$('a').filter(function(index) { return $(this).text().trim() === '#{text}';  }).click()"
end

When(/^I click h4 by text "([^\"]*)"$/) do |text|
	page.execute_script "$('h4').filter(function(index) { return $(this).text().trim() === '#{text}';  }).click()"
end

When(/^I click span by text "([^\"]*)"$/) do |text|
	page.execute_script "$('span').filter(function(index) { return $(this).text().trim() === '#{text}';  }).click()"
end

When(/^I click paragraph by text "([^\"]*)"$/) do |text|
	page.execute_script "$('p').filter(function(index) { return $(this).text().trim() === '#{text}';  }).click()"
end

When(/^I click icon by text "([^\"]*)"$/) do |text|
	page.execute_script "$('i').filter(function(index) { return $(this).text().trim() === '#{text}';  }).click()"
end

When(/^I click li by text "([^\"]*)"$/) do |text|
	page.execute_script "$('li').filter(function(index) { return $(this).text().trim() === '#{text}';  }).click()"
end

When(/^I click link by class "([^\"]*)"$/) do |item|
	page.execute_script "$('#{item}').click()"
end

When(/^I click span by class "([^\"]*)"$/) do |item|
	page.execute_script "$('#{item}').click()"
end

When(/^I click span by class "([^\"]*)"$/) do |item|
	page.execute_script "$('#{item}').click()"
end

When(/^I click item by href "([^\"]*)"$/) do |text|
	text.split("|").each do |field|
		page.find(:xpath, "//a[@href='#{field.strip}']").click
	end
end

When(/^I click item by heading "([^\"]*)"$/) do |text|
	text.split("|").each do |field|
		page.find(:xpath, "//li[@heading='#{field.strip}']").click
	end
end

When(/^I click text "([^\"]*)"$/) do |text|
	text.split("|").each do |field|
		page.find(:xpath, "//a[@text='#{field.strip}']").click
	end
end

When(/^I click text by link "([^\"]*)"$/) do |text|
	text.split("|").each do |field|
		page.find(:xpath, "//li[@a='#{field.strip}']").click
	end
end

When(/^I click item by label "([^\"]*)"$/) do |text|
	text.split("|").each do |text|
		page.find(:xpath, "//option[@label='#{text}']").click
	end
end

When(/^I click item by title "([^\"]*)"$/) do |text|
	text.split("|").each do |text|
		page.find(:xpath, "//label[@title='#{text}']").click
	end
end

When(/^I click link by title "([^\"]*)"$/) do |text|
	text.split("|").each do |text|
		page.find(:xpath, "//a[@title='#{text}']").click
	end
end

When(/^I click label by id "([^\"]*)"$/) do |text|
	text.split("|").each do |field|
		page.find(:xpath, "//label[@id='#{item}']").click
	end
end

When(/^I click input by id "([^\"]*)"$/) do |text|
	text.split("|").each do |field|
		page.find(:xpath, "//label[@input='#{item}']").click
	end
end

When(/^I click item by label "([^\"]*)"$/) do |text|
	text.split("|").each do |text|
		page.find(:xpath, "//option[@label='#{text}']").click
	end
end

When(/^I click in class "([^\"]*)"$/) do |item|
	text.split("|").each do |field|
		page.find(:xpath, "//button[@class='#{item}']").click
	end
end

When(/^I click last class "([^\"]*)"$/) do |item|
	page.execute_script "$('#{item}').last().click()"
end

When(/^I upload an document on the position "([^\"]*)"$/) do |pos|
	page.execute_script "$('.up-doc-list input[type=file]').eq(#{pos}).click()"
end

When(/^I click first link "([^\"]*)"$/) do |link|
	page.execute_script "$('#{link}').first().click()"
end

When(/^I click first class "([^\"]*)"$/) do |item|
	page.execute_script "$('#{item}').first().click()"
end

When(/^I click first button "([^\"]*)"$/) do |text|
	page.execute_script "$('#{text}').first().click()"
end

When(/^I click first text "([^\"]*)"$/) do |text|
	page.execute_script "$('#{text}').first().click()"
end

Then(/^Invalid class should be visible into "([^\"]*)"$/) do |name|
	find("input[name=#{name}].ng-invalid").should be_visible
end
