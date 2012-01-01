source 'http://rubygems.org'

gem 'rails', '3.1.3'

gem 'sqlite3'
gem 'devise'
gem 'will_paginate'
gem 'haml'
gem 'jquery-rails'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.1.5'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'
group :production do
  gem 'pg'
  gem 'therubyracer-heroku', '0.8.1.pre3'
end

group :test do
  # Pretty printed test output
  gem 'turn', '0.8.2', :require => false
end

group :development, :test do
# To use debugger (ruby-debug for Ruby 1.8.7+, ruby-debug19 for Ruby 1.9.2+)
#  gem 'ruby-debug'
  gem 'ruby-debug19'
  gem 'heroku'
end
