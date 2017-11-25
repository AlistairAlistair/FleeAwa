require_relative('../db/sql_runner.rb')

class Destination

  attr_accessor( :airport_name, :location, :country)

  def initialize(options)
    @id = options['id'].to_i
    @airport_name = options['airport_name']
    @location = options['location']
    @country = options['country']
  end

  def save()
    sql = "INSERT INTO destinations (airport_name, location, country)
           VALUES ($1, $2, $3)
           RETURNING id"
    values = [@airport_name, @location, @country]
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
