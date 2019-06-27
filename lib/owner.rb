class Owner
  # code goes here
  attr_reader :name
  attr_accessor :cat
  attr_accessor :dog

  @@all = []
  def initialize(name)
    @name = name
    @species = "human"
    @cats = []
    @dogs = []
    @@all << self
  end

  def name
    @name
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all = []
  end

  def species
    @species
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_cat(name)
    @cats << Cat.new(name, cat)
  end

  def buy_dog(name)
    @dogs << Dog.new(name, dog)
  end

  def cats
    @cats
  end

  def dogs
    @dogs
  end

  def walk_dogs
    Dog.mood("happy")
  end



end
