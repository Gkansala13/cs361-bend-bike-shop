class Rental

  attr_reader :bike

  def initialize(bike)
    @bike = bike
  end

  def total_price
    bike_price + luggage_weight * 2 + self.bike.weight * 2
  end

  def bike_price
    self.bike.price
  end

  def luggage_weight
    self.bike.luggage.items.count * 10
  end

  def total_weight
    self.bike.weight + self.bike.luggage.items.count
  end
  # ^ decided not to use this method in the total price equation
  # This allows me to individually change the both the price multiplyer for the weight and luggage in the future


end


