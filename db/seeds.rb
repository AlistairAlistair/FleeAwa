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
  "departure_airport_name" => "Aberdeen Airport",
  "departure_city" => "Aberdeen",
  "dep_country" => "Scotland"
  })
departure4 = Departure.new({
  "departure_airport_name" => "Edinburgh Airport",
  "departure_city" => "Edinburgh",
  "dep_country" => "Scotland"
  })
departure5 = Departure.new({
  "departure_airport_name" => "Glasgow Airport",
  "departure_city" => "Glasgow",
  "dep_country" => "Scotland"
  })
departure8 = Departure.new({
  "departure_airport_name" => "Madrid Airport",
  "departure_city" => "Madrid",
  "dep_country" => "Spain"
  })
  departure9= Departure.new({
    "departure_airport_name" => "Munich Airport",
    "departure_city" => "Munich",
    "dep_country" => "Germany"
    })
  departure10 = Departure.new({
    "departure_airport_name" => "Orlando International",
    "departure_city" => "Orlando",
    "dep_country" => "USA"
    })
  departure11 = Departure.new({
    "departure_airport_name" => "Keflavik International Airport",
    "departure_city" => "Reykjavik",
    "dep_country" => "Iceland"
    })
  departure2 = Departure.new({
    "departure_airport_name" => "Airport Bratislava",
    "departure_city" => "Bratislava",
    "dep_country" => "Slovakia"
    })
    departure12 = Departure.new({
      "departure_airport_name" => "Thessaloniki Airport",
      "departure_city" => "Thessaloniki",
      "dep_country" => "Greece"
      })
    departure7 = Departure.new({
      "departure_airport_name" => "Heathrow Airport",
      "departure_city" => "London",
      "dep_country" => "England"
      })
    departure13 = Departure.new({
      "departure_airport_name" => "Haneda Airport",
      "departure_city" => "Tokyo",
      "dep_country" => "Japan"
      })
    departure6 = Departure.new({
      "departure_airport_name" => "Noi Bai Airport",
      "departure_city" => "Hanoi",
      "dep_country" => "Vietnam"
      })
      departure3 = Departure.new({
        "departure_airport_name" => "Ferenc Liszt International Airport",
        "departure_city" => "Budapest",
        "dep_country" => "Hungary"
        })

departure1.save()
departure2.save()
departure3.save()
departure4.save()
departure5.save()
departure6.save()
departure7.save()
departure8.save()
departure9.save()
departure10.save()
departure11.save()
departure12.save()
departure13.save()

destination1 = Destination.new({
  "destination_airport_name" => "Aberdeen Airport",
  "destination_city" => "Aberdeen",
  "country" => "Scotland"
  })
  destination4 = Destination.new({
  "destination_airport_name" => "Edinburgh Airport",
  "destination_city" => "Edinburgh",
  "country" => "Scotland"
  })
  destination5 = Destination.new({
  "destination_airport_name" => "Glasgow Airport",
  "destination_city" => "Glasgow",
  "country" => "Scotland"
  })
  destination8 = Destination.new({
  "destination_airport_name" => "Madrid Airport",
  "destination_city" => "Madrid",
  "country" => "Spain"
  })
  destination9 = Destination.new({
    "destination_airport_name" => "Munich Airport",
    "destination_city" => "Munich",
    "country" => "Germany"
    })
    destination10 = Destination.new({
    "destination_airport_name" => "Orlando International",
    "destination_city" => "Orlando",
    "country" => "USA"
    })
    destination11 = Destination.new({
    "destination_airport_name" => "Keflavik International Airport",
    "destination_city" => "Reykjavik",
    "country" => "Iceland"
    })
    destination2 = Destination.new({
    "destination_airport_name" => "Airport Bratislava",
    "destination_city" => "Bratislava",
    "country" => "Slovakia"
    })
    destination12 = Destination.new({
      "destination_airport_name" => "Thessaloniki Airport",
      "destination_city" => "Thessaloniki",
      "country" => "Greece"
      })
      destination7 = Destination.new({
      "destination_airport_name" => "Heathrow Airport",
      "destination_city" => "London",
      "country" => "England"
      })
      destination13 = Destination.new({
      "destination_airport_name" => "Haneda Airport",
      "destination_city" => "Tokyo",
      "country" => "Japan"
      })
      destination6 = Destination.new({
      "destination_airport_name" => "Noi Bai Airport",
      "destination_city" => "Hanoi",
      "country" => "Vietnam"
      })
      destination3 = Destination.new({
      "destination_airport_name" => "Ferenc Liszt International Airport",
      "destination_city" => "Budapest",
      "country" => "Hungary"
      })
destination1.save()
destination2.save()
destination3.save()
destination4.save()
destination5.save()
destination6.save()
destination7.save()
destination8.save()
destination9.save()
destination10.save()
destination11.save()
destination12.save()
destination13.save()
