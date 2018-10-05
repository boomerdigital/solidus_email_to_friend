source 'https://rubygems.org'

branch = ENV.fetch('SOLIDUS_BRANCH', 'master')
gem "solidus", github: "solidusio/solidus", branch: branch
gem "solidus_auth_devise", github: "solidusio/solidus_auth_devise"

if branch == 'master' || branch >= "v2.3"
  gem 'rails', '~> 5.1.4'
elsif branch >= "v2.0"
  gem 'rails', '~> 5.0.6'
else
  gem 'rails', '~> 4.2.7'
end

gem 'pg', '~> 0.21'
gem 'mysql2', '~> 0.4.10'

group :development, :test do
  if branch == 'master' || branch >= "v2.0"
    gem "rails-controller-testing"
  else
    gem "rails_test_params_backport"
  end

  if branch < "v2.5"
    gem 'factory_bot', '4.10.0'
  else
    gem 'factory_bot', '> 4.10.0'
  end
end


gemspec
