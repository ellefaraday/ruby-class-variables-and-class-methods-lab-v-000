class Song

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists.include?(artist) : @@artists << artist
    @@genres.include?(genre) : @@genres << genre
  end

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def self.count
    @@count
  end

  def self.artists
    @@artists
  end

  def self.genres
    @@genres
  end

end
  