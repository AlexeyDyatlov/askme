source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.4.5'

gem 'rails', '~> 5.2.2'
gem 'uglifier'
gem 'jquery-rails'
gem 'validates_email_format_of'
gem 'bootsnap', '>= 1.1.0', require: false

group :production do
  gem 'pg'
end

group :development, :test do
  gem 'sqlite3', '~> 1.3', '< 1.4'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
