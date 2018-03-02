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
