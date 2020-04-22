require 'pry'

class Song

    @@artists = []
    @@genres = []
    @@count = 0
    @@artist_count = {}
    @@genre_count = {}

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@artists << artist
        @@genres << genre
        @@count += 1

        
    end

    def name
        @name
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
        @@genres.each do |x|
            if @@genre_count.key?(x)
                @@genre_count[x] += 1
            else
                @@genre_count[x] = 1
            end
        end
        @@genre_count
    
    end

    def self.artist_count
        @@artists.each do |x|
            if @@artist_count.key?(x)
                @@artist_count[x] += 1
            else
                @@artist_count[x] = 1
            end
        end    
        @@artist_count
    end



end


