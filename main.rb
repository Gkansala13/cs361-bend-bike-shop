!# /usr/bin/env ruby

require_relative 'bike'

bike = Bike.new(1, :pink, 99.99)
container = Cargo.new(bike)

container.add_cargo(:apples)
container.add_cargo(:water)
container.add_cargo(:repair_kit)

puts "Space for #{container.remaining_capacity} items left."

bike.rent!