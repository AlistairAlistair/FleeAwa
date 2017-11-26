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
