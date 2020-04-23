require 'pry'
class Song
    @@count = 0
    @@artists = []
    @@genres = []
    @@genre_hash = {}

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
        if @@genre_hash[genre]
            @@genre_hash[genre] = @@genre_hash[genre] + 1
        else
            @@genre_hash[genre] = 1
        end
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
        @@genre_hash
    end

end
