require 'capybara/cucumber'
require "selenium-webdriver"
require 'rubygems'
require 'bundler/setup'
require 'capybara/rspec'

module SelectizeHelpers
  def selectize_click(id)
    selectize_within(id) do
      first('div.selectize-input').click
    end
  end

  def select_option(id, text)
    puts id
    puts text
    selectize_within(id) do
      first('div.selectize-input').click
      page.execute_script "$('div.option').filter(function(index) { return $(this).text().trim() === '#{text}' }).click()"
    end
  end

  def set_text(id, text)
    selectize_within(id) do
      first('div.selectize-input input').set(text)
    end
  end

  def selectize_within(id)
    within(:xpath, "//input[@id='#{id}']/..") do
      yield if block_given?
    end
  end
end

if ENV['HEADLESS'] == 'true'
  require 'headless'

  headless = Headless.new(:video => {:provider => :ffmpeg})
  headless.start

  Before do
    headless.video.start_capture
  end

  After do |scenario|
    if scenario.failed?
      BUILD_ID = ENV['BUILD_ID'] unless defined? BUILD_ID

      puts "Video saved in path ->"
      puts "/tmp/#{BUILD_ID}/#{scenario.name.split.join("_")}.mov"

      headless.video.stop_and_save("/tmp/#{BUILD_ID}/#{scenario.name.split.join("_")}.mov")
    else
      headless.video.stop_and_discard
    end
  end

  at_exit do
    headless.destroy
  end
end

Capybara.register_driver :selenium do |app|
  browser = (ENV['browser'] || 'firefox').to_sym
  Capybara::Selenium::Driver.new(app, :browser => browser)
end

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 20
Capybara.javascript_driver = :webkit

World(SelectizeHelpers)
