require 'capybara/rspec'
require 'capybara/rails'
require 'capybara/poltergeist'
require 'capybara-screenshot/rspec'

RSpec.configure do
  Capybara.javascript_driver = :poltergeist
end
