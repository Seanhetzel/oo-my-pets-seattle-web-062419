class Owner
  # code goes here
  #attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @species = species
    @@all << self
  end

  def name
    @name = name
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
end
