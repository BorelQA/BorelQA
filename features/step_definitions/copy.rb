require 'capybara/rspec'

When(/^I copy item by id "([^\"]*)"$/) do |item|
    text_copy = page.find(:id, field.strip).send_keys [:control, 'a'], [:control, 'c']
    puts text_copy
end

When(/^I paste item by id "([^\"]*)"$/) do |item|
  text.split("|").each do |field|
    text_paste = page.find(:id, field.strip).send_keys [:control, 'v'].click
    puts text_paste
  end
end
