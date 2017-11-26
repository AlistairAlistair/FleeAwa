require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/departure')

get '/departures' do # index
  @departures = Departure.all()
  erb( :"departure/index" )
end

get '/departures/new' do
  erb(:"departures/new")
end

post '/departures' do
  departure = Departure.new(params)
  departure.save
  redirect to("/departures")
end
