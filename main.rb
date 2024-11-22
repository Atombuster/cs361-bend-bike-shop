!# /usr/bin/env ruby

require_relative 'bike'
require_relative 'rental'

def Rental(id, color, price, extra_items)
    bike = Bike.new(id, color, price, extra_items)
    rental = Rental.new(bike)
end

items = [:apple, :water, :protein_bar]

bike = Bike.new(1, :pink, 99.99, items)



puts "Total Price: #{rental.price}, Total Weight: #{rental.weight}"

