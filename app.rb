require('sinatra')
require('sinatra/reloader')
require("sinatra/activerecord")
also_reload('lib/**/*.rb')
require('sinatra/reloader')
require('pry')
require('pg')
require('./lib/shoe.rb')
require('./lib/store.rb')

 DB = PG.connect({:dbname => "shoe_store_test"})

#stores
get('/') do
  @stores = Store.all()
  erb(:home)
end

get('/stores') do
  @stores = Store.all()
  erb(:stores)
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

patch('/stores/:id/update') do
  name = params[:name]
  @store = Store.find(params.fetch("id").to_i())
  @store.update({:name => name})
  @stores = Store.all
  erb(:store_info)
end

delete('/stores/:id') do
  @store = Store.find(params.fetch("id").to_i())
  @store.delete()
  @stores = Store.all()
  erb(:stores)
end

#Shoes

get('/shoes') do
  @shoes = Shoe.all()
  erb(:shoes)
end

post('/shoes') do
  brand = params[:brand]
  price = params[:price]
  @shoe = Shoe.create({:brand => brand, :price => price})
  @shoes = Shoe.all()
  erb(:shoes)
end

delete('/shoes/:id') do
  @shoe = Shoe.find(params.fetch("id").to_i())
  @shoe.delete()
  @shoes = Shoe.all
  erb(:shoe_info)
end
