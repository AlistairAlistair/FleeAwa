require_relative('../db/sql_runner.rb')
require('pry-byebug')

class Flight

  attr_accessor(:id, :flight_number, :ticket_cost, :flight_date, :capacity, :available_seats, :status, :airline_id, :departure_id, :destination_id)


  def initialize(options)
    @id = options['id'].to_i
    @flight_number = options['flight_number']
    @ticket_cost = options['ticket_cost']
    @flight_date = options['flight_date']
    @capacity = options['capacity'].to_i
    @available_seats = options['available_seats'].to_i
    @status = options['status']
    @airline_id = options['airline_id'].to_i
    @departure_id = options['departure_id'].to_i
    @destination_id = options['destination_id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM flights"
    values = []
    results = SqlRunner.run( sql, values )
    return results.map { |flight| Flight.new( flight ) }
  end

  def save()
    sql = "INSERT INTO flights (flight_number, ticket_cost, flight_date, capacity, available_seats, status, airline_id, departure_id, destination_id)
           VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9)
           RETURNING id"
    values = [@flight_number, @ticket_cost, @flight_date, @capacity, @available_seats, @status, @airline_id, @departure_id, @destination_id]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def delete()
    sql = "DELETE FROM flights
    WHERE id = $1"
    values = [@id]
    SqlRunner.run( sql, values )
  end

  def self.delete_all()
    sql = "DELETE FROM flights"
    values = []
    SqlRunner.run( sql, values )
  end

  def self.find(id)
    sql = "SELECT * FROM flights
    WHERE id = $1"
    values = [id]
    result = SqlRunner.run(sql, values).first
    flight = Flight.new(result)
    return flight
  end

  def departure
    sql = "SELECT * FROM departures
    WHERE id = $1"
    values = [@departure_id]
    departure = SqlRunner.run( sql, values )
    result = Departure.new( departure.first )
    return result
  end

  def destination
    sql = "SELECT * FROM destinations
    WHERE id = $1"
    values = [@destination_id]
    destination = SqlRunner.run( sql, values )
    result = Destination.new( destination.first )
    return result
  end

  def airline
    sql = "SELECT * FROM airlines
    WHERE id = $1"
    values = [@airline_id]
    airline = SqlRunner.run( sql, values )
    result = Airline.new( airline.first )
    return result
  end

  def update()
    sql = "UPDATE flights
          SET (flight_number, ticket_cost, flight_date, capacity, available_seats, status, airline_id, departure_id, destination_id)
          = ( $1, $2, $3, $4, $5, $6, $7, $8, $9 )
          WHERE id = $10"
    values = [@flight_number, @ticket_cost, @flight_date, @capacity, @available_seats, @status, @airline_id, @departure_id, @destination_id, @id]
    SqlRunner.run( sql, values )
  end

  def self.map_items(flight_data)
    return flight_data.map { |flight| Flight.new(flight) }
  end

  def self.cheap_flights
    sql = "SELECT * FROM flights
    ORDER BY ticket_cost ASC"
    values = []
    results = SqlRunner.run( sql, values )
    return results.map { |flight| Flight.new( flight ) }
  end

  def self.flight_search(flight_date, departure_city, destination_city)

    sql = "SELECT *
           FROM flights
           INNER JOIN departures ON departures.id = flights.departure_id
           INNER JOIN airlines ON airlines.id = flights.airline_id
           INNER JOIN destinations ON destinations.id = flights.destination_id
           WHERE flight_date = $1 AND departure_id = $2 AND destination_id = $3
           ORDER BY ticket_cost ASC"
    values = [flight_date, departure_city.to_i, destination_city.to_i]
    results = SqlRunner.run(sql, values)
    return results.map { |flight| Flight.new( flight ) }
  end

  def self.flight_search_no_destination(flight_date, destination_city)

    sql = "SELECT *
           FROM flights
           INNER JOIN departures ON departures.id = flights.departure_id
           INNER JOIN airlines ON airlines.id = flights.airline_id
           INNER JOIN destinations ON destinations.id = flights.destination_id
           WHERE flight_date = $1 AND departure_id = $2
           ORDER BY ticket_cost ASC"
    values = [flight_date, destination_city.to_i]
    results = SqlRunner.run(sql, values)
    return results.map { |flight| Flight.new( flight ) }
  end

  def self.flight_search_no_departure(flight_date, departure_city)

    sql = "SELECT *
           FROM flights
           INNER JOIN departures ON departures.id = flights.departure_id
           INNER JOIN airlines ON airlines.id = flights.airline_id
           INNER JOIN destinations ON destinations.id = flights.destination_id
           WHERE flight_date = $1 AND destination_id = $2
           ORDER BY ticket_cost ASC"
    values = [flight_date, departure_city.to_i]
    results = SqlRunner.run(sql, values)
    return results.map { |flight| Flight.new( flight ) }
  end

  def flight_discount(available_seats, capacity, ticket_cost)
      seats = ""
    if available_seats > 1 * capacity
      price = ticket_cost * 1
      seats = "High"
    elsif available_seats > 0.5 * capacity
      price = ticket_cost * 2
      seats = "Medium"
    else available_seats < 0.5 * capacity
      price = ticket_cost * 4
      seats = "Low"
    end
    discount_price = (price / 100)
    return discount_price.to_s
  end

  def seat_availability(available_seats, capacity)
      seats = ""
    if available_seats > 0.9 * capacity
      seats = "High"
    elsif available_seats > 0.5 * capacity
      seats = "Medium"
    else available_seats < 0.5 * capacity
      seats = "Low"
    end
    return seats
  end

end
