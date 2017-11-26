require_relative('../db/sql_runner.rb')

class Flight

  attr_accessor(:id, :flight_number, :ticket_cost, :flight_date, :capacity, :status, :airline_id, :departure_id, :destination_id)


  def initialize(options)
    @id = options['id'].to_i
    @flight_number = options['flight_number']
    @ticket_cost = options['ticket_cost']
    @flight_date = options['flight_date']
    @capacity = options['capacity']
    @available_seats = options['available_seats']
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
    sql = "DELETE FROM deals
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



end
