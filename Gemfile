source 'https://rubygems.org'

gem 'rails', '~> 3.2.0.rc2'

gem 'haml', '~> 3.2.0.alpha'
gem 'omniauth', :git => 'git://github.com/intridea/omniauth.git'
gem 'omniauth-twitter'
gem 'twitter'
gem 'twitter-text'

platforms :jruby do
  gem 'jruby-openssl'
end

group :assets do
  gem 'sass-rails'
  gem 'uglifier'
end

group :production do
  gem 'thin'
end

group :test do
  gem 'mocha'
  gem 'simplecov'
  gem 'webmock'
end
