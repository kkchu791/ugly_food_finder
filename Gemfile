source 'https://rubygems.org'

ruby "2.3.0"

gem 'rails', '4.2.5.1'
gem 'sass-rails', '~> 5.0'
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
  gem 'sqlite3'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
  gem 'uglifier', '>= 1.3.0'
end

group :test do
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'rspec-rails', '~> 3.0'
  gem 'simplecov', :require => false
  gem 'coveralls', :require => false
end
