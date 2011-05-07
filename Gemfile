source 'http://rubygems.org'

gem 'rails', '3.1.0.beta1'
gem 'haml'
gem 'oa-oauth'
gem 'sass'
gem 'twitter'

platforms :ruby, :mswin, :mingw do
  gem 'therubyracer-heroku', '0.8.1.pre3'
end

group :production do
  gem 'pg'
end

group :test do
  gem 'ZenTest'
  gem 'mocha'
  gem 'turn', :require => false
  gem 'webmock'
end
