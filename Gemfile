source 'https://rubygems.org'

branch = ENV.fetch('SOLIDUS_BRANCH', 'master')
gem "solidus", github: "solidusio/solidus", branch: branch
gem "solidus_auth_devise", github: "solidusio/solidus_auth_devise"

if branch == 'master' || branch >= "v2.0"
  gem "rails-controller-testing", group: :test
else
  gem "rails", '~> 4.2.7'
  gem "rails_test_params_backport", group: :test
end

gem 'pg'
gem 'mysql2'

gemspec
