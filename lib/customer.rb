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
    binding.pry
  end
end
