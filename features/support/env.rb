require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.config do |config|
    config.default_driver = :selenium
    config.default_max_wait_time = 5
end