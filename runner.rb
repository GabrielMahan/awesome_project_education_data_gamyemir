require_relative 'config/environment'
require 'JSON'
require 'open-uri'
require 'rspec/core/rake_task'
require 'active_support/core_ext'

# Do not log database activity when running our application
ActiveRecord::Base.logger = nil

# Enter your code below ...

