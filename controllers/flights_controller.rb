require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/flight')

get '/flights' do # index
  @flights = Flight.all()
  erb( :"flights/index" )
end

get '/flights/new' do
  erb(:"flights/new")
end

post '/flights' do
  flight = Flight.new(params)
  flight.save
  redirect to("/flights")
end
