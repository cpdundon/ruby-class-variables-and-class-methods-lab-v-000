class Song
  @@count = 0
  @@artists = []
  @@genres = []
  @@songs = []
  
  attr_reader :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @@count += 1
    @@songs << self
    @@artists << artist
    @@genres << genre
    
    @name = name
    @artist = artist
    @genre = genre
  end
  
  def self.count
    @@count 
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
    k = self.genres
    len = k.size
    v = Array[1..len].fill(0)
    rtn = Hash.new(k, v)
    
    rtn
  end
end