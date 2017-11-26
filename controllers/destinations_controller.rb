require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/destination')

get '/destinations' do # index
  @destinations = Destination.all()
  erb( :"destinations/index" )
end

get '/destinations/new' do
  erb(:"destinations/new")
end

post '/destinations' do
  destination = Destination.new(params)
  destination.save
  redirect to("/destinations")
end
