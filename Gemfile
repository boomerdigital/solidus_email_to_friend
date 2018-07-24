source 'https://rubygems.org'

branch = ENV.fetch('SOLIDUS_BRANCH', 'master')
gem "solidus", github: "solidusio/solidus", branch: branch
gem "solidus_auth_devise", github: "solidusio/solidus_auth_devise"

if branch == 'master' || branch >= "v2.3"
  gem 'rails', '~> 5.1.4'
elsif branch >= "v2.0"
  gem 'rails', '~> 5.0.6'
end

gem 'pg', '~> 0.21'
gem 'mysql2', '~> 0.4.10'

group :test do
  if branch == 'master' || branch >= "v2.0"
    gem "rails-controller-testing"
  end
end


gemspec
