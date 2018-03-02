require('sinatra')
require('sinatra/reloader')
require("sinatra/activerecord")
also_reload('lib/**/*.rb')
require('sinatra/reloader')
require('pry')
require('pg')
require('./lib/shoe.rb')
require('./lib/store.rb')

get('/') do
  @stores = Store.all()
  erb(:home)
end

get('/stores') do
  @stores = Store.all()
  erb(:stores)
end

get('/shoes') do
  @shoes = Shoe.all()
  erb(:shoes)
end

post('/stores') do
  name = params[:name]
  @store = Store.create({:name => name})
  @stores = Store.all()
  erb(:stores)
end

get('/stores/:id') do
  name = params[:name]
  @store = Store.find(params.fetch("id").to_i())
  erb(:store_info)
end

post('/shoes') do
  brand = params[:brand]
  price = params[:price]
  @shoe = Shoe.create({:brand => brand, :price => price})
  @shoes = Shoe.all()
  erb(:shoes)
end
