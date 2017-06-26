require 'capybara/rspec'

PLATFORM_URL_LOCAL = "http://localhost:3000"
PLATFORM_URL_SITE = "http://olx.com.br";
CUR_ENV = ENV["env"] == 'localhost' ? PLATFORM_URL_LOCAL : PLATFORM_URL_SITE;

Given(/^I open the site olx Brazil$/) do
  visit CUR_ENV
end

# Given(/^I open backoffice platform$/) do
# 	visit "#{CUR_ENV}/login/bo"
# end
#
# Given(/^I open customers page$/) do
# 	visit "#{CUR_ENV}/backoffice/empresas"
# end
#
# Given(/^I am on the backoffice FX plataforma-stage$/) do
# 	visit "#{CUR_ENV}/backoffice/"
# end
