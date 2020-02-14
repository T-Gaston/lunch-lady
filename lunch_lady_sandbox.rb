class Dish
  attr_accessor :name, :price
  def initialize(name, price)
    @name = name
    @price = price
  end

  def print_item
    "#{@name} $#{@price}"
  end

end

dishx = Dish.new('hamburger', 4.50)

puts dishx.print_item