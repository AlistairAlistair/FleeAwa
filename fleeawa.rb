require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('controllers/airlines_controller')
require_relative('controllers/departures_controller')
require_relative('controllers/destinations_controller')
require_relative('controllers/flights_controller')
require_relative('controllers/admin_controller')

get '/' do
  erb( :index )
end

get '/admin' do
  erb( :"admin/index" )
end

get '/log_in' do
  erb( :"admin/log_in" )
end
