require 'capybara/rspec'

When (/^I refresh page$/)do
  page.driver.browser.navigate.refresh
end
