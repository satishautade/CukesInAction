require File.join(File.dirname(__FILE__), '..', '..', 'lib', 'nice_bank')
require 'rspec'

RSpec.configure do |config|
    config.expect_with(:rspec) { |c| c.syntax = :should }
end
