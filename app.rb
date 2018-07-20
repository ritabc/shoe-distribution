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

get('/') do
  erb(:index)
end

get('/brands') do
  @brands = Brand.all
  erb(:brands)
end

get('/stores') do
  @stores = Store.all
  erb(:stores)
end

post('/brands') do
  new_brand = Brand.create({:brand_name => params.fetch('add-brand'), :price => params.fetch('price').to_i})
  @brands = Brand.all
  erb(:brands)
end

post('/stores') do
  new_store = Store.create({:store_name => params.fetch('add-store')})
  @stores = Store.all
  erb(:stores)
end

get('/brands/:id') do
  @brand = Brand.find(params.fetch(:id))
  erb(:brand)
end

get('/stores/:id') do
  @store = Store.find(params.fetch(:id))
  erb(:store)
end

get('/stores/:id/edit') do
  @store = Store.find(params.fetch(:id))
  erb(:store_edit)
end

patch('/stores/:id') do
  new_name = params.fetch('store-name')
  @store = Store.find(params.fetch(:id))
  @store.update(store_name: new_name)
  erb(:store)
end

delete('/stores') do
  @store = Store.find(params.fetch('store-id'))
  @store.destroy
  @stores = Store.all
  erb(:stores)
end
