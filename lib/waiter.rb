class Waiter
  attr_reader :name, :years
  @@all = []
  def initialize(name, years)
    @name = name
    @years = years
    @@all << self
  end
  def self.all
    @@all
  end
  def new_meal(customer, total, tip)
    Meal.new(self, customer, total, tip)
  end
  def meals
    
    
  end

end
