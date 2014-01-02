source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.0.beta1'

# Use postgresql as the database for Active Record
gem 'pg'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use puma as the app server
gem 'puma'

# OmniAuth
gem 'omniauth-facebook'
gem 'omniauth-twitter'
gem 'omniauth-google-oauth2'
gem 'omniauth-vkontakte'

# Tags for blog records
gem 'acts-as-taggable-on'

group :development do
  gem 'capistrano'
  gem 'spring'
end

# Authentication
gem 'devise'

# Image upload
gem 'carrierwave'

# ImageMagick
gem 'mini_magick'

# Testing
group :development, :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
end

group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'guard-rspec'
  gem 'faker'
  gem 'launchy'
end
