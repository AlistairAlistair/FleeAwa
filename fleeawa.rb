require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('controllers/airlines_controller')
require_relative('controllers/departures_controller')
require_relative('controllers/destinations_controller')
require_relative('controllers/flights_controller')

get '/' do
  erb( :index )
end
