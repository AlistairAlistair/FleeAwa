require_relative('../db/sql_runner.rb')

class Departure

  attr_accessor( :departure_airport_name, :departure_city)

  def initialize(options)
    @id = options['id'].to_i
    @departure_airport_name = options['departure_airport_name']
    @departure_city = options['departure_city']
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

end
