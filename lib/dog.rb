#require_relative '../config/environment.rb'

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
