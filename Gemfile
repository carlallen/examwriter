source 'http://rubygems.org'

gem 'rails', '3.1.0'

gem 'sqlite3-ruby', :require => 'sqlite3'
gem 'devise'
gem 'will_paginate'
gem 'haml'
# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# Bundle the extra gems:
# gem 'bj'
# gem 'nokogiri'
# gem 'sqlite3-ruby', :require => 'sqlite3'
# gem 'aws-s3', :require => 'aws/s3'
group :production do
  gem 'pg'
end
group :development, :test do
#   gem 'webrat'
# To use debugger (ruby-debug for Ruby 1.8.7+, ruby-debug19 for Ruby 1.9.2+)
  gem 'ruby-debug'
  # gem 'ruby-debug19'
  gem 'heroku'
end
