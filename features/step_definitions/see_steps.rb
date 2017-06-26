require 'capybara/rspec'

Then(/^I see text "([^\"]*)"$/) do |text|
	text.split("|").each do |field|
		expect(page).to have_content field.strip
	end
end

Then(/^I should see "([^\"]*)"$/) do |text|
	text.split("|").each do |field|
		expect(page).to have_content field.strip
	end
end

Then(/^I see itens by id "([^\"]*)"$/) do |text|
	text.split("|").each do |field|
		expect(page).to have_selector :id, field.strip
	end
end

Then(/^I see itens button "([^\"]*)"$/) do |text|
	text.split("|").each do |field|
		expect(page).to have_button(field.strip)
	end
end

Then(/^I see itens by xpath "([^\"]*)"$/) do |text|
	text.split("|").each do |field|
		expect(page).to have_xpath("//a[@href='#{field.strip}']")
	end
end

Then(/^I should not see text "([^\"]*)"$/) do |text|
	text.split("|").each do |field|
		page.should have_no_content field.strip
	end
end
