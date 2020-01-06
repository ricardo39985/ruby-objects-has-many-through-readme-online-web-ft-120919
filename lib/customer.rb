require "pry"
class Customer
  attr_reader :name, :age
  @@all = []
  def initialize(name, age)
    @name= name
    @age = age
    @@all << self
  end
  def self.all
    @@all
  end
  def new_meal(waiter, total, tip)
    Meal.new(waiter, self, total, tip)
  end
  def meals
    total = 0
    Meal.all.each { |meal| meal.customer == self ? total+=1 : total+=0 }
    total
  end
end
