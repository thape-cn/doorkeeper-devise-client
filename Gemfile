source "https://rubygems.org"

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby ">= 2.6"

gem "listen"
gem "puma", "~> 5.6"
gem "rails", "~> 7.0"
gem "sass-rails", "~> 6.0"
gem 'terser'

gem "devise", "~> 4.8"
gem "omniauth-oauth2", "~> 1.8.0"
gem "omniauth-rails_csrf_protection", "~> 1.0"
gem "rollbar"

group :development do
  gem "dotenv-rails"
  gem "rubocop-rails_config"
end

group :development, :test do
  gem "pry-byebug"
  gem "sqlite3", "~> 1.5.0"
end

group :production do
  gem "pg", "~> 1.4"
end
