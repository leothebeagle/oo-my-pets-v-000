class Owner
  attr_accessor :pets
  @@all = []

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end


  def initialize
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end
end
