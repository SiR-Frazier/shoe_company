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
  @shoes = Shoe.all()
  erb(:store_info)
end


get('/stores/:id/edit') do
  name = params[:name]
  @store = Store.find(params.fetch("id").to_i())
  @shoes = Shoe.all()
  erb(:store_info)
end

patch('/stores/:id/edit') do
  name = params[:name]
  brand = params[:brand]
  @store = Store.find(params.fetch("id").to_i())
  @store.update({:name => name})
  @stores = Store.all()
  @shoes = Shoe.all()
  erb(:store_info)
end

post('/store/:id') do #add brand
  brand = params[:brand]
  @store = Store.find(params.fetch("id").to_i())
  # @shoe = Shoe.find(params.fetch("id").to_i())
  @shoes = Shoe.all()
  @shoe = Shoe.create({:brand => brand})
  @shoe.save()
  erb(:store_info)
end
#
# post('/stores/:id/edit') do
#   brand = params[:brand]
#   @store = Store.find(params.fetch("id").to_i())
#   @shoe.update({:brand => brand})
#   @shoes = Shoe.all()
#   erb(:shoe_info)
# end

delete('/store/:id') do
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
  @shoe = Shoe.new({:brand => brand, :price => price})
  @shoes = Shoe.all()
  @shoe.save()
  erb(:shoes)
end

get ('/shoes/:id') do
  @shoe = Shoe.find(params.fetch("id").to_i())
  @stores = @shoe.stores
  @shoes = Shoe.all
  erb(:shoe_info)
end

patch('/shoes/:id') do
  brand = params[:brand]
  @shoe = Shoe.find(params.fetch("id").to_i())
  @shoe.update({:brand => brand}) #update price?
  # @shoes.push(brand)
  @shoes = Shoe.all()
  erb(:shoe_info)
end

delete('/shoes/:id') do
  @shoe = Shoe.find(params.fetch("id").to_i())
  @shoe.delete()
  @shoes = Shoe.all
  erb(:shoes)
end

post('/shoes/:id/edit') do
  @store = Store.find(params.fetch("id").to_i)
  @shoe = Shoe.find(params.fetch("id").to_i)
  @store.shoes.push(store)
  @shoes.all()
  erb(:store_info)
end
