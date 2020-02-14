


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


class App
  def initialize
  @entrees = [
    Dish.new('Hamburger', 4),
    Dish.new('Grilled Cheese', 3),
    Dish.new('Pizza Slice', 2)
  ]
  
  @side_dishes = [
    Dish.new('Fries', 2),
    Dish.new('Coleslaw', 1),
    Dish.new('Mac and Cheese', 2)
  ]
  end
  

  def menu_loop
    @entrees.each do |e|
      puts e.print_item
    end
    @side_dishes.each do |x|
      puts x.print_item
    end
  end

  def select_entree
    puts "Select 1 entree"
    @entrees.each_with_index do |entree, index|
    puts ((index + 1).to_s + " " + entree.print_item)
    end
    
    entree_input = gets.to_i
    @user_entree = @entrees[entree_input - 1]
    puts @user_entree.print_item

  end

  def select_name
    puts "What is your name?"
    @user_name = gets.strip
    puts "Why hello there #{@user_name}!"
  end

  def select_money
    puts "How much money do you have?"
    @user_money = gets.strip.to_i
  end

  def select_side_dish1
    puts "Select 1 side dish"
    @side_dishes.each_with_index do |side_dish, index|
    puts ((index + 1).to_s + " " + side_dish.print_item)
    end

    side_dish1_input = gets.to_i
    @user_side_dish1 = @side_dishes[side_dish1_input - 1]
    puts @user_side_dish1.print_item
  end

  def select_side_dish2
    puts "Select a 2nd side dish"
    @side_dishes.each_with_index do |side_dish, index|
    puts ((index + 1).to_s + " " + side_dish.print_item)
    end

    side_dish2_input = gets.to_i
    @user_side_dish2 = @side_dishes[side_dish2_input - 1]
    puts @user_side_dish2.print_item
  end

  def display_order
    puts "Okay #{@user_name}! Here's your order"
    puts @user_entree.print_item
    puts @user_side_dish1.print_item
    puts @user_side_dish2.print_item
    puts "Your order total is $#{price_total} "
  end

  def price_total
    sum=@user_entree.price+@user_side_dish1.price+@user_side_dish2.price
  end

end

app = App.new

puts "Welcome to the Ruby Cafe!"
app.select_name
app.select_money
app.select_entree
app.select_side_dish1
app.select_side_dish2
app.display_order