# require('sinatra')
# require('sinatra/reloader')
# also_reload('lib/**/*.rb')
# require('sinatra/activerecord')
# require('./lib/CLASS')
# require('./lib/CLASS')
# require('./lib/CLASS')
# require('./lib/CLASS')
# require("pg")
require('bundler/setup')
Bundler.require(:default)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each do |file|
  require file
end
require("pry")
