class Song
  @@count = 0
  @@artists = []
  @@genres = []


  attr_accessor :name, :artist, :genre
  def initialize(name, artist, genre=nil)
    @@count += 1
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
   @@genres.each do |genre|
    if @@genre_count.has_key?(genre)
      @@genre_count[genre] += 1
    else
      @@genre_count[genre] = 1
    end
   end

    @@genre_count
   end

   def self.artist_count
    @@artists.each do |artist|
     if @@artist_count.has_key?(artist)
       @@artist_count[artist] += 1
     else
       @@artist_count[artist] = 1
     end
    end

     @@artist_count
    end
 # def self.count
  #   @@count.count
  # end
  #
  # def self.artist
  #    @@artist
  # end
  #
  # def self.genres
  #    @@genres
  # end
  #
  # def self.genres_count
  #    @@genres.each do |genre|
  #      @@genre_count[genre] ||= 1
  #    end
  # end
  #
  # def self.artist_count
  #    @@artists.each do |artist|
  #      @@artists_count[artist] ||= 1
  #    end
  #
  # end

end
