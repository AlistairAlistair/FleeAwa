require_relative('../db/sql_runner.rb')

class Departure

  attr_accessor( :id, :departure_airport_name, :departure_city)

  def initialize(options)
    @id = options['id'].to_i
    @departure_airport_name = options['departure_airport_name']
    @departure_city = options['departure_city']
  end

  def self.all()
    sql = "SELECT * FROM departures"
    values = []
    results = SqlRunner.run( sql, values )
    return results.map { |departure| Departure.new( departure ) }
  end

  def save()
    sql = "INSERT INTO departures (departure_airport_name, departure_city)
           VALUES ($1, $2 )
           RETURNING id"
    values = [@departure_airport_name, @departure_city]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def delete()
    sql = "DELETE FROM departures
    WHERE id = $1"
    values = [@id]
    SqlRunner.run( sql, values )
  end

  def self.delete_all()
    sql = "DELETE FROM departures"
    values = []
    SqlRunner.run( sql, values )
  end

  def self.find(id)
    sql = "SELECT * FROM departures
    WHERE id = $1"
    values = [id]
    result = SqlRunner.run(sql, values).first
    departure = Departure.new(result)
    return departure
  end

  def update()
    sql = "UPDATE departures
          SET (departure_airport_name, departure_city) = ($1, $2)
          WHERE id = $3"
    values = [@departure_airport_name, @departure_city, @id]
    SqlRunner.run( sql, values)
  end

end
