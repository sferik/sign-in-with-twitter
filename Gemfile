source 'http://rubygems.org'

gem 'rails', '~> 3.1.0.rc6'

gem 'haml', '~> 3.2.0.alpha'
gem 'oa-oauth'
gem 'twitter'

platforms :jruby do
  gem 'jruby-openssl'
  gem 'therubyrhino'
end

group :production do
  gem 'pg'
  gem 'therubyracer', :platforms => :ruby
  gem 'thin'
end

group :test do
  gem 'mocha'
  gem 'simplecov'
  gem 'webmock'
end
