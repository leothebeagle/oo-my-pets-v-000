class Owner

  @@all = []

  def self.all
    @@all
  end

  def initialize
    @@all << self 
  end
end
