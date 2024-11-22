

class Rental

  attr_reader :bike

  def initialize(bike)
    @bike = bike
  end

  def price
    @bike.price + @bike.items_count * 10
  end

  def weight
    @bike.weight + @bike.items_count
  end

end
