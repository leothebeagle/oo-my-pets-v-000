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

  def buy_cat(cat_name)
    pets[:cats] << Cat.new(cat_name)
  end

  def buy_dog(dog_name)
    pets[:dogs] << Dog.new(dog_name)
  end

  def walk_dogs
    pets[:dogs].each { |dog| dog.mood = "happy"}
  end

  def play_with_cats
    pets[:cats].each { |cat| cat.mood = "happy" }
  end

  def feed_fish
    pets[:fishes].each { |fish| fish.mood = "happy" }
  end

  def sell_pets
    pets.each do |animal, array|
      array.each do |pet|
        pet.mood = "nervous"
      end
      array = []
    end

  end


end
