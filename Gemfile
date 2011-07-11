source 'http://rubygems.org'

gem 'rails', '3.1.0.rc4'
gem 'haml', '~> 3.2.0.alpha'
gem 'oa-oauth'
gem 'therubyracer', :platforms => :ruby
gem 'twitter'

platforms :jruby do
  gem 'jruby-openssl'
  gem 'therubyrhino'
end

group :production do
  gem 'pg'
end

group :test do
  gem 'ZenTest'
  gem 'mocha'
  gem 'simplecov'
  gem 'turn', :require => false
  gem 'webmock'
end
