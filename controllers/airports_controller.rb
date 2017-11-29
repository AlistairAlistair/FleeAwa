require('sinatra')
require('sinatra/contrib/all')

require_relative('../models/airport')

get '/airports' do # index
  @airports = Airport.all()
  erb( :"airports/index" )
end

get '/airports/new' do
  erb(:"airports/new")
end

post '/airports' do
  airport = Airport.new(params)
  airport.save
  redirect to("/airports")
end

get '/airports/:id/edit' do
  @airport = airport.find(params[:id])
  erb (:"airports/edit")
end

put '/airports/:id' do
  Airport.new(params).update
  redirect to "/airports"
end
