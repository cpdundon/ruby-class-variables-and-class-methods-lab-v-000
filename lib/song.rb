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
    rtn = {}
    
    k.each do |g|
      rtn[g] = 0
      @@songs.each do |s|
        if s.genre == g
          rtn[g] += 1
        end
      end
    end
    
    rtn
  end
end