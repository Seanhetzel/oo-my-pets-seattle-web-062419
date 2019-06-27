class Dog
  # code goes here

  attr_reader :name
  attr_accessor :mood, :owner

  @@all = []
  def initialize(name, dog)
    @dog = dog
    @name = name
    @mood = "nervous"
    @@all << self
  end

  def name
    @name
  end

  def mood
    @mood
  end

  def self.all
    @@all
  end
end


class Owner

 attr_reader :species, :name

 @@all = []

 def initialize(name)
     @name = name
     @species = "human"
     @@all << self
 end

 def self.all
   @@all
 end

 def self.count
     self.all.length
 end

 def say_species
     "I am a #{@species}."
 end

 def buy_cat(name)
     Cat.new(name, self)
 end

 def buy_dog(name)
     Dog.new(name, self)
 end

 def cats
     Cat.all.select do |cat|
         cat.owner == self
     end
 end

 def dogs
     Dog.all.select do |dog|
         dog.owner == self
     end
 end

 def walk_dogs
     self.dogs.each do |dog|
       dog.mood = "happy"
     end
 end

 def feed_cats
     self.cats.each do |cat|
       cat.mood = "happy"
     end
 end

 def list_pets
     number_of_dogs = self.dogs.count
     number_of_cats = self.cats.count
     return "I have #{number_of_dogs} dog(s), and #{number_of_cats} cat(s)."
 end

 def sell_pets
     all_pets = self.cats + self.dogs
     all_pets.each do |pet|
         sell_pet(pet)
     end
 end

 def sell_pet(pet)
     pet.owner = nil
     pet.mood = "nervous"
 end

 def self.reset_all
     self.all.clear
 end

end
