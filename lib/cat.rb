require_relative './environment.rb'

class Cat
  # code goes here
  attr_reader :name
  attr_accessor :mood, :owner

  @@all = []
  def initialize(name, cat)
    @cat = cat
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
