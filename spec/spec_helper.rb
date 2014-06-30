require 'ruby-rets'

Dir["#{Bundler.root}/spec/support/*.rb"].each { |file| require file }

RSpec.configure do |config|
  config.order = 'random'
  config.mock_with :rspec
end
