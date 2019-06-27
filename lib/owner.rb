class Owner
  # code goes here
  #attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
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
end
