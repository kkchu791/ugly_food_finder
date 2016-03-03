source 'https://rubygems.org'

ruby "2.3.0"

gem 'rails', '4.2.5.1'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'geocoder'
gem 'gmaps4rails'

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
