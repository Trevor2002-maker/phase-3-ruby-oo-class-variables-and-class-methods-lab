class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []
  
    def initialize(name, artist, genre)
      @name = name
      @artist = artist
      @genre = genre
      @@count += 1
      @@artists << artist
      @@genres << genre
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
      genre_count = Hash.new(0)
      @@genres.each { |genre| genre_count[genre] += 1 }
      genre_count
    end
  
    def self.artist_count
      artist_count = Hash.new(0)
      @@artists.each { |artist| artist_count[artist] += 1 }
      artist_count
    end
  end

  puts Song.count  # Output: 0

  # Create a Song object
  song1 = Song.new("hit me baby one more time", "Brittany Spears", "pop")
  puts Song.count  # Output: 1
  
  # Create another Song object
  song2 = Song.new("99 Problems", "Jay-Z", "rap")
  puts Song.count  # Output: 2

  song3 = Song.new("Lucifer","Jay-Z","rap")
  puts Song.count

  puts Song.genres
  puts Song.artists
  puts Song.genre_count
  puts Song.artist_count