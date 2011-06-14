source 'http://rubygems.org'

gem 'rails', '3.1.0.rc4'
gem 'haml'
gem 'oa-oauth'
gem 'twitter'

gem 'jruby-openssl', :platforms => :jruby

group :production do
  gem 'pg'
  gem 'therubyracer-heroku', '0.8.1.pre3', :platforms => :ruby
end

group :test do
  gem 'ZenTest'
  gem 'mocha'
  gem 'simplecov'
  gem 'therubyracer', :platforms => :ruby
  gem 'therubyrhino', :platforms => :jruby
  gem 'turn', :require => false
  gem 'webmock'
end
