require_relative('../db/sql_runner.rb')

class Destination

  attr_accessor( :destination_airport_name, :destination_city, :country)

  def initialize(options)
    @id = options['id'].to_i
    @destination_airport_name = options['destination_airport_name']
    @destination_city = options['destination_city']
    @country = options['country']
  end

  def save()
    sql = "INSERT INTO destinations (destination_airport_name, destination_city, country)
           VALUES ($1, $2, $3)
           RETURNING id"
    values = [@destination_airport_name, @destination_city, @country]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def delete()
    sql = "DELETE FROM destinations
    WHERE id = $1"
    values = [@id]
    SqlRunner.run( sql, values )
  end

  def self.delete_all()
  sql = "DELETE FROM destinations"
  values = []
  SqlRunner.run( sql, values )
end

end
