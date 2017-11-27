require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/flight')

get '/flights' do # index
  @flights = Flight.all()
  erb( :"flights/index" )
end

get '/flights/new' do
  @airlines = Airline.all()
  @departures = Departure.all()
  @destinations = Destination.all()
  erb(:"flights/new")
end

post '/flights' do
  flight = Flight.new(params)
  flight.save
  redirect to("/flights")
end

get '/flights/:id/edit' do
  @flight = Flight.find(params[:id])
  erb (:"flights/edit")
end

put '/flights/:id' do
  flight.new(params).update
  redirect to "/flights"
end
