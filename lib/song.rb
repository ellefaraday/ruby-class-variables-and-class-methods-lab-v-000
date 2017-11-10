class Song

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    unless @@artists.include?(artist)
      @@artists << artist
    end
    unless @@genres.include?(genre)
      @@genres << genre
    end
    @@genre_count.include?(genre) ? @@genre_count[genre] += 1 : @@genre_count[genre] = 1
    @@artist_count.include?(artist) ? @@artist_count[artist] += 1 : @@artist_count[artist] = 1
  end

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}

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
