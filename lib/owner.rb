class Owner

  @@all = []

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end


  def initialize
    @@all << self
  end
end
