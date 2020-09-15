class Event
  attr_reader :name, :food_trucks

  def initialize(name)
    @name = name
    @food_trucks = []
  end

  def add_food_truck(food_truck)
    food_trucks << food_truck
  end

  def food_truck_names
    food_trucks.map(&:name)
  end

  def food_trucks_that_sell(item)
    food_trucks.select do |food_truck|
      food_truck.inventory[item] != 0
    end
  end

  def total_inventory
    total = {}
    food_trucks.each do |food_truck|
        food_truck.inventory.each do |item, quantity|
        total[item] = { quantity: 0, food_trucks: [] } if total[item].nil?
        total[item][:quantity] += food_truck.inventory[item]
        total[item][:food_trucks] << food_truck
      end
    end
    total
  end

  # def sorted_item_list
  #
  # end
end
