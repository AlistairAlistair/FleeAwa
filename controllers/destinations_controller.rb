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

get '/destinations/:id/edit' do
  @destination = Destination.find(params[:id])
  erb (:"destinations/edit")
end

put '/destinations/:id' do
  Destination.new(params).update
  redirect to "/destinations"
end
