ENV['RACK_ENV'] = 'test'
# require('rspec')
# require('pg')
# require('sinatra/activerecord')
# require('CLASS')
# require('CLASS')
# require('CLASS')
# require('CLASS')
require('bundler/setup')
Bundler.require(:default, :test)
set(:root, Dir.pwd)
Dir[File.dirname(__FILE__) + '/../lib/*.rb'].each do |file|
  require file
end

require('capybara/rspec')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)
require('./app')
require('pry')

RSpec.configure do |config|
  config.after(:each) do
    Brand.all.each do |brand|
      brand.destroy
    end
    Store.all.each do |store|
      store.destroy
    end
  end
end
