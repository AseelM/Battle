ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', 'app')
require File.join(File.dirname(__FILE__), 'features', 'web_helpers')
require 'capybara'
require 'capybara/rspec'
require 'rspec'
require 'simplecov'
require 'simplecov-console'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
 SimpleCov::Formatter::Console,
])
SimpleCov.start do
 add_filter "feature_spec"
end

Capybara.app = Battle

RSpec.configure do |config|

  config.expect_with :rspec do |expectations|

    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups

end
