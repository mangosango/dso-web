source 'https://rubygems.org'

ruby '2.0.0'
gem 'rails', '3.2.13'
gem 'thin'

# Use MongoDB
gem 'mongoid'
gem 'bson_ext'
gem 'mongo_ext'

# JQuery served via CDN
gem 'jquery-rails'
gem 'jquery-rails-cdn'
gem 'jquery-turbolinks'
gem 'turbolinks'

# Force newer slim version
gem 'slim', '>= 1.3.8'
gem 'slim-rails'

# Let's have some admin interface
gem 'activeadmin-mongoid', git: "git://github.com/elia/activeadmin-mongoid.git"
gem 'activeadmin', '0.5.1' # Force version 0.5.1 for Mongoid compatibility
gem 'redactor-rails'
gem 'devise'

# WE DON'T FUCK AROUND
gem 'kaminari'

# Gems used only for assets
group :assets do
  gem 'sass-rails',     '~> 3.2.3'
  gem 'entypo-rails'
  gem 'coffee-rails',   '~> 3.2.1'
  gem 'uglifier',       '>= 1.0.3'
end

# Gems for testing and development
group :development, :test do
  gem 'minitest-spec-rails'
  gem 'guard'
  gem 'guard-minitest'
  gem 'debugger'
  gem 'capybara'
end

# for heroku
group :production do
  gem 'rails_12factor'
end