require_relative './environment.rb'

class Owner
  # code goes here
  #attr_reader :name
  #attr_accessor :cat
  #attr_accessor :dog
  attr_reader :species, :name

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    #@cats = []
    #@dogs = []
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
    #@cats << Cat.new(name, cat)
    Cat.new(name, self)
  end

  def buy_dog(name)
    #@dogs << Dog.new(name, dog)
    Dog.new(name, self)
  end

  def cats
    #@cats
    Cat.all.select do |cat|
      cat.owner == self
  end

  def dogs
    #@dogs
    Dog.all.select do |dog|
      dog.owner == self
  end

  def walk_dogs
    self.dogs.each do |dog|
      dog.mood = "happy"
    #@dogs.each do |dog|
    #  Dog.mood = "happy"
    end
  end



end
