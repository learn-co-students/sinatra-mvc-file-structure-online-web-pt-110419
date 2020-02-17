class Dog
  
  attr_accessor :name, :breed, :age 
  
  @@all = []
  
  def initialize(name, breed, age)
    #binding.pry
    @name = name
    @breed = breed 
    @age = age 
    @@all << self
  end 
  
  def self.create(name, breed, age)
    dog = self.new
    dog.name = name
    dog.breed = breed
    dog.age = age
    @@all << dog
  end
  
  
  def self.all
    @@all
  end 
  
end 