require_relative('../db/sql_runner.rb')

class Airline

  attr_accessor( :airline_name, :phone, :email)

  def initialize(options)
    @id = options['id'].to_i
    @airline_name = options['airline_name']
    @phone = options['phone']
    @email = options['email']
  end

  def save()
    sql = "INSERT INTO airlines (airline_name, phone, email)
           VALUES ($1, $2, $3)
           RETURNING id"
    values = [@airline_name, @phone, @email]
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

end
