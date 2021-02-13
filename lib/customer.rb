class Customer
  attr_acccessor :name, :age 
  
  @@all = []
  
  def initialize(name, age)
    @name = name 
    @age = age
    @@all << self 
  end
  
  def meals
    Meal.all.select do |meal|
      meal.customer == self
    end
  end
  
  def self.all
    @@all
  end
  
end