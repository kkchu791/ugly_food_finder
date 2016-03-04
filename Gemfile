source 'https://rubygems.org'

ruby "2.3.0"

gem 'rails', '4.2.5.1'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'geocoder'
gem 'gmaps4rails'
gem 'carrierwave'
gem 'bootstrap-sass'
gem 'humanize_boolean'
gem "fog-aws"
gem "figaro"

group :development, :test do
  gem 'spring'
  gem 'byebug'
  gem 'factory_girl_rails'
  gem 'rspec-rails', '~> 3.0'
  gem 'sqlite3'
  gem 'simplecov', :require => false
  gem 'coveralls', :require => false
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

group :test do
  gem 'database_cleaner'
end
