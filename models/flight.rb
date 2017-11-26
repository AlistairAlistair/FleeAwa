require_relative('../db/sql_runner.rb')

class Flight

  attr_accessor(:flight_number, :ticket_cost, :flight_date, :capacity, :status, :airline_id, :departure_id, :destination_id)
  attr_reader :id

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

end
