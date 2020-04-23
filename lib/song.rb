require "pry"

class Song

    @@count=0 
    @@artists=[]
    @@genres=[]

    def initialize(name,artist,genre)
        @name=name
        @artist=artist
        @genre=genre
        @@count += 1
        @@artists << @artist
        @@genres << @genre


    end

    def self.count
        @@count
    end

    def self.artists
       
        @@artists.uniq!

    end

    def self.genres

        @@genres.uniq!

    end

    def self.genre_count
        hash = {}
        @@genres.each do |type_of_genre|
          if hash[type_of_genre] 
            hash[type_of_genre] += 1
          else  
            hash[type_of_genre] = 1
          end
        end
        hash
      end

    def self.artist_count
        artist_count = {}
        @@artists.each do |artist|
          if artist_count[artist] #if the artist is already in the hash
            artist_count[artist] += 1
          else
            artist_count[artist] = 1
          end
        end
        artist_count
      end


    attr_accessor :name, :artist, :genre


end
