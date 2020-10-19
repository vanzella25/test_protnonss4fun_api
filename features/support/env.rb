require "factory_bot"
require "faker"
require "httparty"
require "rspec"

require_relative "spec_helper/spec_rest.rb"

World(REST, FactoryBot::Syntax::Methods)