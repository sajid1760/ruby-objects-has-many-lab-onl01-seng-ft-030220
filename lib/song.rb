class Song 
  
  attr_accessor  :artist, :name, :genre  
  
  @@all = []
  
  
  def initialize (name,genre = "genre")
    @name = name
    @genre = genre
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def artist_name
    self.artist.name
  end
  
end