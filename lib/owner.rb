class Owner
  # code goes here
  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name
    @species = "human"
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

  def buy_cat
    Cat.new(name, cat)
    cats = []
  end

  def cats

  end

end
