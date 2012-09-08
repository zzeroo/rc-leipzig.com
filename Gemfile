source 'https://rubygems.org'

gem 'rails', '3.2.6'
gem 'pg'
gem 'redcarpet'
gem 'nested_form', github: 'ryanb/nested_form'
gem 'jquery-rails'
# Pagination
gem 'kaminari' #, :git => 'https://github.com/PapePathe/kaminari.git'
# Authentication and rights managment
gem 'devise'
gem 'cancan'
# File upload
gem 'rails_config'
gem 'carrierwave'
gem 'carrierwave-ftp', :require => 'carrierwave/storage/ftp/all'

# Better webserver? (20:13 07.08.2012)
gem 'thin'


group :development, :test do
  gem 'taps'
  gem 'turn'
  gem 'test-unit', '~> 2.0.0'  
  gem 'autotest-rails'
  gem 'ZenTest'
  gem 'term-ansicolor'
  gem 'ansi'
  gem 'minitest'

  gem 'heroku'
  gem 'foreman'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'haml-rails'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
  gem 'jquery-datatables-rails', github: 'rweng/jquery-datatables-rails'
  gem 'jquery-ui-rails'
end

group :development do
  gem 'hpricot'
  gem 'ruby_parser'
end

