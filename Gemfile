source 'http://rubygems.org'

gem 'rails', '3.2.2'
gem 'thin'
gem 'devise'
gem 'will_paginate'
gem 'haml'
gem 'jquery-rails'
gem "bootstrap-sass"
gem "twitter_bootstrap_form_for", :git => "git://github.com/medhistree/twitter_bootstrap_form_for.git", :ref => "a1ed2178"

# Gems used only for assets and not required
# in production environments by default.
group :development do
  gem 'sqlite3'
end

group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier'
end


group :production do
  gem 'pg'
end

group :test do
  # Pretty printed test output
  gem 'turn', '0.8.2', :require => false
end

group :development, :test do
  gem 'ruby-debug19'
  gem 'heroku'
end
