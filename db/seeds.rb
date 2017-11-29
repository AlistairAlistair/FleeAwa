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
departure2 = Departure.new({
  "departure_airport_name" => "Edinburgh Airport",
  "departure_city" => "Edinburgh",
  "dep_country" => "Scotland"
  })
departure3 = Departure.new({
  "departure_airport_name" => "Glasgow Airport",
  "departure_city" => "Glasgow",
  "dep_country" => "Scotland"
  })
departure4 = Departure.new({
  "departure_airport_name" => "Madrid Airport",
  "departure_city" => "Madrid",
  "dep_country" => "Spain"
  })
  departure5 = Departure.new({
    "departure_airport_name" => "Munich Airport",
    "departure_city" => "Munich",
    "dep_country" => "Germany"
    })
  departure6 = Departure.new({
    "departure_airport_name" => "Orlando International",
    "departure_city" => "Orlando",
    "dep_country" => "USA"
    })
  departure7 = Departure.new({
    "departure_airport_name" => "Keflavik International Airport",
    "departure_city" => "Reykjavik",
    "dep_country" => "Iceland"
    })
  departure8 = Departure.new({
    "departure_airport_name" => "Airport Bratislava",
    "departure_city" => "Bratislava",
    "dep_country" => "Slovakia"
    })
    departure9 = Departure.new({
      "departure_airport_name" => "Thessaloniki Airport",
      "departure_city" => "Thessaloniki",
      "dep_country" => "Greece"
      })
    departure10 = Departure.new({
      "departure_airport_name" => "Heathrow Airport",
      "departure_city" => "London",
      "dep_country" => "England"
      })
    departure11 = Departure.new({
      "departure_airport_name" => "Haneda Airport",
      "departure_city" => "Tokyo",
      "dep_country" => "Japan"
      })
    departure12 = Departure.new({
      "departure_airport_name" => "Noi Bai Airport",
      "departure_city" => "Hanoi",
      "dep_country" => "Vietnam"
      })
      departure13 = Departure.new({
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

destination1 = Destination.new({
  "destination_airport_name" => "Aberdeen Airport",
  "destination_city" => "Aberdeen",
  "country" => "Scotland"
  })
  destination2 = Destination.new({
  "destination_airport_name" => "Edinburgh Airport",
  "destination_city" => "Edinburgh",
  "country" => "Scotland"
  })
  destination3 = Destination.new({
  "destination_airport_name" => "Glasgow Airport",
  "destination_city" => "Glasgow",
  "country" => "Scotland"
  })
  destination4 = Destination.new({
  "destination_airport_name" => "Madrid Airport",
  "destination_city" => "Madrid",
  "country" => "Spain"
  })
  destination5 = Destination.new({
    "destination_airport_name" => "Munich Airport",
    "destination_city" => "Munich",
    "country" => "Germany"
    })
    destination6 = Destination.new({
    "destination_airport_name" => "Orlando International",
    "destination_city" => "Orlando",
    "country" => "USA"
    })
    destination7 = Destination.new({
    "destination_airport_name" => "Keflavik International Airport",
    "destination_city" => "Reykjavik",
    "country" => "Iceland"
    })
    destination8 = Destination.new({
    "destination_airport_name" => "Airport Bratislava",
    "destination_city" => "Bratislava",
    "country" => "Slovakia"
    })
    destination9 = Destination.new({
      "destination_airport_name" => "Thessaloniki Airport",
      "destination_city" => "Thessaloniki",
      "country" => "Greece"
      })
      destination10 = Destination.new({
      "destination_airport_name" => "Heathrow Airport",
      "destination_city" => "London",
      "country" => "England"
      })
      destination11 = Destination.new({
      "destination_airport_name" => "Haneda Airport",
      "destination_city" => "Tokyo",
      "country" => "Japan"
      })
      destination12 = Destination.new({
      "destination_airport_name" => "Noi Bai Airport",
      "destination_city" => "Hanoi",
      "country" => "Vietnam"
      })
      destination12 = Destination.new({
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

flight1 = Flight.new({
  "flight_number" => "1234",
  "ticket_cost" => 8900,
  "flight_date" => "2017-12-02",
  "capacity" => 100,
  "available_seats" => 93,
  "status" => true,
  "airline_id" => 1,
  "departure_id" => 1,
  "destination_id" => 8
  })

flight1.save()

flight2 = Flight.new({
  "flight_number" => "2373",
  "ticket_cost" => 18000,
  "flight_date" => "2017-12-06",
  "capacity" => 100,
  "available_seats" => 12,
  "status" => true,
  "airline_id" => 4,
  "departure_id" => 8,
  "destination_id" => 11
  })

flight2.save()

flight3 = Flight.new({
  "flight_number" => "8300",
  "ticket_cost" => 12000,
  "flight_date" => "2017-12-10",
  "capacity" => 100,
  "available_seats" => 53,
  "status" => true,
  "airline_id" => 3,
  "departure_id" => 11,
  "destination_id" => 3
  })

flight3.save()

flight4 = Flight.new({
  "flight_number" => "9385",
  "ticket_cost" => 130300,
  "flight_date" => "2017-12-02",
  "capacity" => 100,
  "available_seats" => 03,
  "status" => true,
  "airline_id" => 1,
  "departure_id" => 2,
  "destination_id" => 12
  })

flight4.save()

flight5 = Flight.new({
  "flight_number" => "7482",
  "ticket_cost" => 23900,
  "flight_date" => "2017-12-06",
  "capacity" => 100,
  "available_seats" => 37,
  "status" => true,
  "airline_id" => 2,
  "departure_id" => 3,
  "destination_id" => 5
  })

flight5.save()

flight6 = Flight.new({
  "flight_number" => "4194",
  "ticket_cost" => 23100,
  "flight_date" => "2017-12-10",
  "capacity" => 100,
  "available_seats" => 64,
  "status" => true,
  "airline_id" => 3,
  "departure_id" => 3,
  "destination_id" => 8
  })

flight6.save()

flight7 = Flight.new({
  "flight_number" => "1984",
  "ticket_cost" => 129500,
  "flight_date" => "2017-12-02",
  "capacity" => 100,
  "available_seats" => 86,
  "status" => true,
  "airline_id" => 4,
  "departure_id" => 2,
  "destination_id" => 1
  })

flight7.save()

flight8 = Flight.new({
  "flight_number" => "5382",
  "ticket_cost" => 89000,
  "flight_date" => "2017-12-06",
  "capacity" => 100,
  "available_seats" => 91,
  "status" => true,
  "airline_id" => 5,
  "departure_id" => 8,
  "destination_id" => 6
  })

flight8.save()

flight9 = Flight.new({
  "flight_number" => "1302",
  "ticket_cost" => 12300,
  "flight_date" => "2017-12-10",
  "capacity" => 100,
  "available_seats" => 03,
  "status" => true,
  "airline_id" => 1,
  "departure_id" => 4,
  "destination_id" => 7
  })

flight9.save()

flight10 = Flight.new({
  "flight_number" => "1420",
  "ticket_cost" => 938200,
  "flight_date" => "2017-12-02",
  "capacity" => 100,
  "available_seats" => 35,
  "status" => true,
  "airline_id" => 2,
  "departure_id" => 6,
  "destination_id" => 10
  })

flight10.save()

flight11 = Flight.new({
  "flight_number" => "6482",
  "ticket_cost" => 94800,
  "flight_date" => "2017-12-06",
  "capacity" => 100,
  "available_seats" => 83,
  "status" => true,
  "airline_id" => 3,
  "departure_id" => 7,
  "destination_id" => 4
  })

flight11.save()

flight12 = Flight.new({
  "flight_number" => "9483",
  "ticket_cost" => 31900,
  "flight_date" => "2017-12-10",
  "capacity" => 100,
  "available_seats" => 19,
  "status" => true,
  "airline_id" => 4,
  "departure_id" => 2,
  "destination_id" => 8
  })

flight12.save()

flight13 = Flight.new({
  "flight_number" => "6475",
  "ticket_cost" => 24700,
  "flight_date" => "2017-12-02",
  "capacity" => 100,
  "available_seats" => 36,
  "status" => true,
  "airline_id" => 5,
  "departure_id" => 8,
  "destination_id" => 10
  })

flight13.save()

flight14 = Flight.new({
  "flight_number" => "2190",
  "ticket_cost" => 84200,
  "flight_date" => "2017-12-06",
  "capacity" => 100,
  "available_seats" => 82,
  "status" => true,
  "airline_id" => 1,
  "departure_id" => 5,
  "destination_id" => 7
  })

flight14.save()

flight15 = Flight.new({
  "flight_number" => "9385",
  "ticket_cost" => 49400,
  "flight_date" => "2017-12-10",
  "capacity" => 100,
  "available_seats" => 92,
  "status" => true,
  "airline_id" => 2,
  "departure_id" => 9,
  "destination_id" => 10
  })

flight15.save()

flight16 = Flight.new({
  "flight_number" => "9385",
  "ticket_cost" => 12400,
  "flight_date" => "2017-12-02",
  "capacity" => 100,
  "available_seats" => 13,
  "status" => true,
  "airline_id" => 3,
  "departure_id" => 4,
  "destination_id" => 3
  })

flight16.save()

flight17 = Flight.new({
  "flight_number" => "9385",
  "ticket_cost" => 8000,
  "flight_date" => "2017-12-06",
  "capacity" => 100,
  "available_seats" => 28,
  "status" => true,
  "airline_id" => 4,
  "departure_id" => 7,
  "destination_id" => 10
  })

flight17.save()

flight18 = Flight.new({
  "flight_number" => "9385",
  "ticket_cost" => 8000,
  "flight_date" => "2017-12-10",
  "capacity" => 100,
  "available_seats" => 74,
  "status" => true,
  "airline_id" => 5,
  "departure_id" => 6,
  "destination_id" => 5
  })

flight18.save()

flight19 = Flight.new({
  "flight_number" => "9385",
  "ticket_cost" => 8000,
  "flight_date" => "2017-12-02",
  "capacity" => 100,
  "available_seats" => 91,
  "status" => true,
  "airline_id" => 1,
  "departure_id" => 8,
  "destination_id" => 6
  })

flight19.save()

flight20 = Flight.new({
  "flight_number" => "9385",
  "ticket_cost" => 8000,
  "flight_date" => "2017-12-06",
  "capacity" => 100,
  "available_seats" => 56,
  "status" => true,
  "airline_id" => 2,
  "departure_id" => 9,
  "destination_id" => 10
  })

flight20.save()
