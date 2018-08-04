class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all = []
  end


  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(fish_name)
    pets[:fishes] << Fish.new(fish_name)
  end




end
