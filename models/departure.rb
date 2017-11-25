require_relative('../db/sql_runner.rb')

class Departure

  attr_accessor( :airport_name, :location)

  def initialize(options)
    @id = options['id'].to_i
    @airport_name = options['airport_name']
    @location = options['location']
  end

  def save()
    sql = "INSERT INTO departures (airport_name, location)
           VALUES ($1, $2 )
           RETURNING id"
    values = [@airport_name, @location]
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
