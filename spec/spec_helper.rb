require 'simplecov'
require 'simplecov-json'
require 'simplecov-rcov'

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  SimpleCov::Formatter::JSONFormatter,
  SimpleCov::Formatter::RcovFormatter
]
SimpleCov.start

require 'rspec'
require 'rack/test'
require 'pry'

RSpec.configure do |conf|
  conf.include Rack::Test::Methods
  conf.order = 'random'

  conf.mock_with :rspec do |mocks|
    mocks.verify_doubled_constant_names = true
  end

end
