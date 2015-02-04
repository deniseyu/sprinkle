RACK_ENV = 'test' unless defined?(RACK_ENV)
require 'capybara/rspec'
require 'rack/test'
require 'capybara/dsl'
require File.expand_path(File.dirname(__FILE__) + "/../config/boot")
Dir[File.expand_path(File.dirname(__FILE__) + "/../app/helpers/**/*.rb")].each(&method(:require))

RSpec.configure do |conf|
  conf.include Rack::Test::Methods
end

Capybara.app = Padrino.application

# You can use this method to custom specify a Rack app
# you want rack-test to invoke:
#
#   app Sprinkle::App
#   app Sprinkle::App.tap { |a| }
#   app(Sprinkle::App) do
#     set :foo, :bar
#   end
#
def app(app = nil, &blk)
  @app ||= block_given? ? app.instance_eval(&blk) : app
  @app ||= Padrino.application
end
