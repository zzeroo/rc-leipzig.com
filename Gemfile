source 'https://rubygems.org'

gem 'rails', '3.2.6'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

group :development, :test do
  gem 'sqlite3'
  gem 'taps'
  gem 'turn'
  gem 'test-unit', '~> 2.0.0'  
  gem 'autotest-rails'
  gem 'ZenTest'
  gem 'term-ansicolor'
  gem 'ansi'

  gem 'heroku'
  gem 'foreman'
end

gem 'pg'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
  gem 'jquery-datatables-rails', github: 'rweng/jquery-datatables-rails'
  gem 'jquery-ui-rails'
end

gem 'jquery-rails'
# Pagination
gem 'kaminari' #, :git => 'https://github.com/PapePathe/kaminari.git'

# Authentication and rights managment
gem 'devise'
gem 'cancan'

# File upload
gem "rails_config"
gem 'carrierwave'
gem 'carrierwave-ftp', :require => 'carrierwave/storage/ftp/all'

# Better webserver? (20:13 07.08.2012)
gem 'thin'
