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


put '/flights/:id/add' do
  @flight = Flight.find(params[:id])
  @flight.book()
  redirect to "/flights/itinerary"
end


put '/flights/:id/remove' do
  @flight = Flight.find(params[:id])
  @flight.cancel()
  redirect to "/flights/itinerary"
end

put '/flights/:id' do
  Flight.new(params).update
  redirect to "/flights"
end

post '/flights/search' do
  @departures = Departure.all()
  @destinations = Destination.all()
  date = params[:flight_date]
  departure = params[:departure_id]
  destination = params[:destination_id]
    if
      departure == "-1" && destination == "-1"
      @results = Flight.flight_search_only_date(date)
    elsif
      departure == "-1"
      @results = Flight.flight_search_no_departure(date, destination)
    elsif
      destination == "-1"
      @results = Flight.flight_search_no_destination(date, departure)
    else
      @results = Flight.flight_search(date, departure, destination)
    end
    erb (:"flights/results")
end

get '/flights/itinerary' do
  @results = Flight.flight_search_status_false
  erb (:"flights/itinerary")
end

post '/flights' do
  flight = Flight.new(params)
  flight.save
  redirect to("/flights")
end


get '/flights/redirect' do

  redirect to("/flights/search")
end
