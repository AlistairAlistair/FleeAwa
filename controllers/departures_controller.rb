require('sinatra')
require('sinatra/contrib/all')

require_relative('../models/departure')

get '/departures' do # index
  @departures = Departure.all()
  erb( :"departures/index" )
end

get '/departures/new' do
  erb(:"departures/new")
end

post '/departures' do
  departure = Departure.new(params)
  departure.save
  redirect to("/departures")
end

get '/departures/:id/edit' do
  @departure = Departure.find(params[:id])
  erb (:"departures/edit")
end

put '/departures/:id' do
  Departure.new(params).update
  redirect to "/departures"
end
