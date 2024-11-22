def MyLuggage(a,b, c = Luggage::DEFAULT_MAX_CAPACITY)
  return Luggage.new(c,b,a)
end


class Luggage

  DEFAULT_MAX_CAPACITY = 10

  attr_reader :items

  def initialize(initial_capacity, items, bike)
    @capacity = initial_capacity
    @items = items
    @bike = bike
  end

  def add(item)
    self.items << item
  end

  def weight
    self.items.size * 10
  end
  def item_count
    return @items.count
  end

end
