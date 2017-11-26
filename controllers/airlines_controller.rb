require('sinatra')
require('sinatra/contrib/all')

require_relative('../models/airline')

get '/airlines' do # index
  @airlines = Airline.all()
  erb( :"airlines/index" )
end

get '/airlines/new' do
  erb(:"airlines/new")
end

post '/airlines' do
  airline = Airline.new(params)
  airline.save
  redirect to("/airlines")
end

get '/airlines/:id/edit' do
  @airline = Airline.find(params[:id])
  erb (:"airlines/edit")
end

put '/airlines/:id' do
  Airline.new(params).update
  redirect to "/airlines"
end
