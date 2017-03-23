# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'coffee-rails', '~> 4.2'
gem 'haml', '~> 4.0', '>= 4.0.7'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'mongoid', '~> 6.1'
gem 'puma', '~> 3.0'
gem 'rails', '~> 5.0.1'
gem 'reek', '~> 4.5', '>= 4.5.6'
gem 'rubocop', '~> 0.47.1'
gem 'sass-rails', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'rspec-rails', '~> 3.5'
end

group :development do
  gem 'erb2haml', '~> 0.1.5'
  gem 'listen', '~> 3.0.5'
  gem 'overcommit', '~> 0.38.0'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'nokogiri', '>= 1.7.1'
