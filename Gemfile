source 'https://rubygems.org'
ruby '2.3.1'

gem 'rails', '~> 4.2.7'

gem 'haml'
gem 'omniauth'
gem 'omniauth-twitter'
gem 'rails_12factor'
gem 'twitter'
gem 'twitter-text'

group :assets do
  gem 'sass-rails', '>= 4.0.3'
  gem 'uglifier'
end

group :production do
  gem 'puma'
end

group :development do
  gem 'spring'
end

group :test do
  gem 'coveralls', require: false
  gem 'mocha', require: false
  gem 'rubocop'
  gem 'simplecov', require: false
  gem 'webmock'
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end
