source 'https://rubygems.org'

ruby '1.9.3'
gem 'rails', '3.2.14'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'pg'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'bootstrap-sass', '~> 2.3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'


# for devise
gem 'devise'

# for pagenation
gem 'kaminari'

group :development, :test do
  # for test
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'database_cleaner' 

  # for Debug
  gem "better_errors"
  gem "binding_of_caller"
  gem 'debugger'
  gem 'pry'

  # for i18n
  gem 'i18n_generators'

  gem 'sqlite3'
end

group :production do
  # 
  gem 'thin'
  gem 'newrelic_rpm'
end

