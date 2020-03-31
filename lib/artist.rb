class Artist 
  attr_accessor :name  
  
  def initialize (name)
    @name = name
  end
  
  def add_song (song)
    song.artist = self
  end
  
  def songs 
    rett = Song.all.collect {|song| song.artist == self} 
    rett 
  end
  
  def add_song_by_name(name,genre = "genre")
    song = Song.new(name,genre) 
    add_song(song)
  end 
  
  def song_count
    self.songs.count 
  end
  
end
