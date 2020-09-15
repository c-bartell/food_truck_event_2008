class FoodTruck
  attr_reader :name, :inventory

  def initialize(name)
    @name = name
    @inventory = Hash.new(0)
  end

  def check_stock(item)
    inventory[item]
  end

  def stock(item, amount)
    inventory[item] = 0 if inventory[item] == 0
    inventory[item] += amount
  end
end
