class RSpecGreeter
  attr_accessor :test

  @@class_property = "I'm a class property"

  def greet
    # binding.pry
    # puts pubs
    # privs
    "Hello RSpec! bro"
  end

  def pubs
    test_var = "I'm a test variable"
    test_var
  end

  private

  def privs
    puts "I'm private"
  end
end

class Calculator
  def add (x,y)
    x+y
  end
end

class Order
  def add_entry
  end
end

class Money
  def initialize (amount, value)
    @amount = amount
  end
end

class LineItem
  def initialize (item)
    @item = item
  end
end

class Item
  def initialize (price, quantity = 1)
    @price = price
  end
end