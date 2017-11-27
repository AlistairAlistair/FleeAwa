require_relative('../models/airline')
require_relative('../models/departure')
require_relative('../models/destination')
require_relative('../models/flight')

airline1 = Airline.new({
  "airline_name" => "Lufthansa",
  "website" => "lufthansa.com",
  "logo" => "lufthansa.png"
  })
airline1.save()

airline2 = Airline.new({
  "airline_name" => "British Airways",
  "website" => "britishairways.com",
  "logo" => "ba.jpg"
  })
airline2.save()

airline3 = Airline.new({
  "airline_name" => "Ryanair",
  "website" => "ryanair.com",
  "logo" => "ryanair.png"
  })
airline3.save()

airline4 = Airline.new({
  "airline_name" => "Emirates",
  "website" => "emirates.com",
  "logo" => "emirates.png"
  })
airline4.save()

airline5 = Airline.new({
  "airline_name" => "Easyjet",
  "website" => "easyjet.com",
  "logo" => "easyjet.png"
  })
airline5.save()

departure1 = Departure.new({
  "departure_airport_name" => "Edinburgh Airport",
  "departure_city" => "Edinburgh"
  })
departure2 = Departure.new({
  "departure_airport_name" => "Aberdeen Airport",
  "departure_city" => "Aberdeen"
  })
departure3 = Departure.new({
  "departure_airport_name" => "Glasgow Airport",
  "departure_city" => "Glasgow"
  })
departure4 = Departure.new({
  "departure_airport_name" => "Inverness Airport",
  "departure_city" => "Inverness"
  })
departure1.save()
departure2.save()
departure3.save()
departure4.save()

destination1 = Destination.new({
  "destination_airport_name" => "McCarran Internation Airport",
  "destination_city" => "Las Vegas",
  "country" => "USA"
  })
destination2 = Destination.new({
  "destination_airport_name" => "Munich Airport",
  "destination_city" => "Munich",
  "country" => "Germany"
  })
destination3 = Destination.new({
  "destination_airport_name" => "Haneda Airport",
  "destination_city" => "Tokyo",
  "country" => "Japan"
  })
destination4 = Destination.new({
  "destination_airport_name" => "Dubai International Airport",
  "destination_city" => "Dubai",
  "country" => "UAE"
  })

destination1.save()
destination2.save()
destination3.save()
destination4.save()

flight1 = Flight.new({
  "flight_number" => "8302",
  "ticket_cost" => 230.50,
  "flight_date" => "2017-12-04",
  "capacity" => 100,
  "available_seats" => 12,
  "status" => "available",
  "airline_id" => 1,
  "departure_id" => 2,
  "destination_id" => 1
  })

flight1.save()

flight2 = Flight.new({
  "flight_number" => "8302",
  "ticket_cost" => 180.00,
  "flight_date" => "2017-12-04",
  "capacity" => 100,
  "available_seats" => 12,
  "status" => "available",
  "airline_id" => 1,
  "departure_id" => 2,
  "destination_id" => 2
  })

flight2.save()

flight3 = Flight.new({
  "flight_number" => "8302",
  "ticket_cost" => 120.00,
  "flight_date" => "2017-12-04",
  "capacity" => 100,
  "available_seats" => 12,
  "status" => "available",
  "airline_id" => 1,
  "departure_id" => 2,
  "destination_id" => 3
  })

flight3.save()

flight4 = Flight.new({
  "flight_number" => "8302",
  "ticket_cost" => 80.00,
  "flight_date" => "2017-12-04",
  "capacity" => 100,
  "available_seats" => 12,
  "status" => "available",
  "airline_id" => 1,
  "departure_id" => 2,
  "destination_id" => 4
  })

flight4.save()
