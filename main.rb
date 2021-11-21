!# /usr/bin/env ruby

require_relative 'bike'

bike = Bike.new(1, :pink, 99.99)
container = Cargo.new(bike)

container.add(:apples)
container.add(:water)
container.add(:repair_kit)

puts "Space for #{container.remaining_capacity} items left."

bike.rent!