ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

module ActiveSupport
  # Core to all Tests
  class TestCase
    # Add more helper methods to be used by all tests here...
  end
end
