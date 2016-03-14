
class ComparableSpaceship
  attr_reader :unit_price, :quantity

  def initialize(unit_price, quantity)
    @unit_price = unit_price
    @quantity = quantity
  end

  def total_price
    @unit_price*@quantity
  end

  def <=> (compared)
    self.total_price <=> compared.total_price
  end

  def to_s
    puts "[price = #{@unit_price}, quantity = #{@quantity}, total = #{total_price}]"
  end
end

books = ComparableSpaceship.new(50,3)
apples = ComparableSpaceship.new(2,10)
grapes = ComparableSpaceship.new(0.2,50)
bananas = ComparableSpaceship.new(3,5)

[books, apples, grapes, bananas].sort.reverse.map {|x| puts "to string of sorted elemets is #{x}"}
