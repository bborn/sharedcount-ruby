$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

# encoding: UTF-8

require 'coveralls'
Coveralls.wear!

require 'simplecov'
SimpleCov.start

require 'sharedcount'
require 'vcr'

VCR.configure do |c|
  c.cassette_library_dir = 'spec/cassettes'
  c.hook_into :webmock
  c.configure_rspec_metadata!
end

RSpec.configure do |config|
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
  config.order = 'random'
end