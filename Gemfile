source 'http://rubygems.org'

gem 'rails', '3.1.0.rc4'
gem 'haml'
gem 'oa-oauth'
gem 'therubyracer', '0.9.0', :platforms => :ruby
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
