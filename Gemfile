source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.3"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.0.1"
gem 'bootstrap-sass', '~> 3.4', '>= 3.4.1'
#gem 'bootstrap', '~> 5.1', '>= 5.1.3'
gem 'jquery-rails'
# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "sprockets-rails"
gem 'rake', '~> 13.0', '>= 13.0.6'
gem 'autoprefixer-rails', '~> 10.4', '>= 10.4.2.0'
gem 'sprockets', '~> 4.0', '>= 4.0.2'
gem 'rails-controller-testing', '~> 1.0', '>= 1.0.5'
gem 'turbolinks', '~> 5.2', '>= 5.2.1'
gem 'bootstrap-will_paginate', '~> 1.0'
gem 'will_paginate', '~> 3.3', '>= 3.3.1'
gem 'faker', '~> 2.19'
gem 'dotenv', '~> 2.7', '>= 2.7.6'
gem 'carrierwave', '~> 2.2', '>= 2.2.2'
gem 'mini_magick', '~> 4.11'
gem 'fog-aws', '~> 3.13'
# gem 'fog', '~> 2.2'
# gem 'fog-ovirt', '~> 2.0', '>= 2.0.1'
# gem 'ovirt-engine-sdk', '~> 4.4', '>= 4.4.1'
# Use sqlite3 as the database for Active Record
#gem "sqlite3", "~> 1.4"
#gem 'sqlite3', '~> 1.6', '>= 1.6.6'

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 5.0"

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "importmap-rails"

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"

# Use Redis adapter to run Action Cable in production
gem "redis", "~> 4.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Sass to process CSS
gem "sassc-rails"
gem 'browser', '~> 5.3', '>= 5.3.1'
# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
gem "image_processing", "~> 1.2"

group :assets do
  # gem 'libv8', '~> 3.16', '>= 3.16.14.15'
  # gem 'therubyracer', '~> 0.12.3'
  gem 'sass-rails', '~> 6.0'
  gem 'coffee-rails', '~> 5.0'
  gem 'uglifier', '~> 4.2'
end

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  gem "spring"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end

group :production do
  gem 'pg', '~> 1.3', '>= 1.3.1'
  gem 'rails_12factor', '~> 0.0.3'
end