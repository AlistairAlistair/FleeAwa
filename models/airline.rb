require_relative('../db/sql_runner.rb')

class Airline

  attr_accessor( :id, :airline_name, :website, :logo)

  def initialize(options)
    @id = options['id'].to_i
    @airline_name = options['airline_name']
    @website = options['website']
    @logo = options['logo']
  end

  def self.all()
    sql = "SELECT * FROM airlines"
    values = []
    results = SqlRunner.run( sql, values )
    return results.map { |airline| Airline.new( airline ) }
  end

  def save()
    sql = "INSERT INTO airlines (airline_name, website, logo)
           VALUES ($1, $2, $3)
           RETURNING id"
    values = [@airline_name, @website, @logo]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def delete()
    sql = "DELETE FROM airlines
    WHERE id = $1"
    values = [@id]
    SqlRunner.run( sql, values )
  end

  def self.delete_all()
    sql = "DELETE FROM airlines"
    values = []
    SqlRunner.run( sql, values )
  end

  def self.find(id)
    sql = "SELECT * FROM airlines
    WHERE id = $1"
    values = [id]
    result = SqlRunner.run(sql, values).first
    airline = Airline.new(result)
    return airline
  end

  def update()
    sql = "UPDATE airlines
          SET (airline_name, website, logo) = ( $1, $2, $3 )
          WHERE id = $4"
    values = [@airline_name, @website, @logo, @id]
    SqlRunner.run( sql, values )
  end

  def self.map_items(airline_data)
    return airline_data.map { |airline| Airline.new(airline) }
  end

end
