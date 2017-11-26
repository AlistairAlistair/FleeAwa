require_relative('../models/airline')
require_relative('../models/departure')
require_relative('../models/destination')
require_relative('../models/flight')

airline1 = Airline.new({
  "airline_name" => "McHaggis Airways",
  "phone" => "0123 4234 342",
  "email" => "contact@mchaggisairways.com"
  })
airline1.save()

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
  "capacity" => 13,
  "airline_id" => 1,
  "departure_id" => 2,
  "destination_id" => 3
  })

flight1.save()
