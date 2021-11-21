class Cargo

  MAX_CARGO_ITEMS = 10

  attr_accessor :cargo_contents

  def initialize(bike)
    @bike = bike
    @cargo_contents = []
  end

  def add(item)
    self.cargo_contents << item
  end

  def remove(item)
    self.cargo_contents.remove(item)
  end

  def capacity
    MAX_CARGO_ITEMS
  end

  def remaining_capacity
    MAX_CARGO_ITEMS - self.cargo_contents.size
  end
  
end