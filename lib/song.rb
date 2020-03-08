class Song
  attr_accessor :name, :artist_name, :create
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end 

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def create 
    @@all << self.new
  end

end
