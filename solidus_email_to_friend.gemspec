# encoding: utf-8
lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

require 'solidus_email_to_friend/version'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'solidus_email_to_friend'
  s.version     = SolidusEmailToFriend.version
  s.summary     = 'Spree extension to send product recommendations to friends'
  s.description = s.summary
  s.required_ruby_version = '>= 2.1.0'

  s.authors      = ['Jorge Calás Lozano', 'Roman Smirnov', 'Trung Lê', 'Allison Reilly']
  s.homepage     = 'https://github.com/boomerdigital/solidus_email_to_friend'
  s.license      = 'BSD-3'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- spec/*`.split("\n")
  s.require_path  = 'lib'
  s.requirements << 'none'

  s.has_rdoc = false

  s.add_dependency "solidus_core", [">= 1.2.0", "< 3"]
  s.add_dependency "solidus_support"
  s.add_dependency 'recaptcha', '>= 0.3.1'
  s.add_dependency "deface", '~> 1.0'

  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'factory_bot', '~> 4.5'
  s.add_development_dependency 'capybara', '~> 2.4'
  s.add_development_dependency 'capybara-screenshot'
  s.add_development_dependency 'poltergeist', '~> 1.5'
  s.add_development_dependency 'shoulda-matchers'
  s.add_development_dependency 'email_spec'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'guard-rspec'
  s.add_development_dependency 'pry-rails'
  s.add_development_dependency 'rubocop'
end
