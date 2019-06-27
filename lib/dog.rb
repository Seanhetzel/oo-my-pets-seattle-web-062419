class Dog
  # code goes here

  attr_reader :name
  attr_accessor :mood

  @@call = []
  def initialize(name, dog)
    @dog = dog
    @name = name
    @mood = mood
    @@all << self
  end

  def name
    @name
  end
end
