# Bike

class Bike

  STANDARD_WEIGHT = 200 # lbs
  MAX_CARGO_ITEMS = 10

  attr_accessor :id, :color, :price, :weight, :rented, :cargo_contents

  def initialize(id, color, price, weight = STANDARD_WEIGHT, rented = false)
    @id = id
    @color = color
    @price = price
    @weight = weight
    @rented = rented
    @cargo_contents = []
  end

  def rent!
    self.rented = true
    puts "Order confirmed, price owed $#{price}."
  end

  def add_cargo(item)
    if self.pannier_remaining_capacity == 0
      self.cargo_contents << item
    else
      puts "Can't add cargo bike storage is full"
    end

  end

  def remove_cargo(item)
    self.cargo_contents.remove(item)
    if self.pannier_remaining_capacity == self.pannier_capacity
      puts "There is no bike's cargo to remove"
    end
  end

  def pannier_capacity
    MAX_CARGO_ITEMS
  end

  def pannier_remaining_capacity
    MAX_CARGO_ITEMS - self.cargo_contents.size
  end

end
