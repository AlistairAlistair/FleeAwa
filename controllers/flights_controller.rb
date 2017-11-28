require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/flight')
require('pry-byebug')

get '/flights' do
  @flights = Flight.all()
  erb( :"flights/index" )
end

get '/flights/new' do
  @airlines = Airline.all()
  @departures = Departure.all()
  @destinations = Destination.all()
  erb(:"flights/new")
end

get '/flights/:id/edit' do
  @flight = Flight.find(params[:id])
  @airlines = Airline.all()
  @departures = Departure.all()
  @destinations = Destination.all()
  erb (:"flights/edit")
end

put '/flights/:id' do
  Flight.new(params).update
  redirect to "/flights"
end

post '/flights/search' do
  date = params[:flight_date]
  departure = params[:departure_id]
  destination = params[:destination_id]
  @results = Flight.flight_search(date, departure, destination)
  erb (:"flights/results")
end

post '/flights' do
  flight = Flight.new(params)
  flight.save
  redirect to("/flights")
end
