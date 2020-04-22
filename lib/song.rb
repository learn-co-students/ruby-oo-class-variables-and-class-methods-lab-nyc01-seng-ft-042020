class Song
    attr_accessor :name
    attr_accessor :artist
    attr_accessor :genre

    @@count = 0
    @@genres = [ ]
    @@artists = [ ]

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count
        
    end

    def self.genres
        @@genres
        @@unique_genres = @@genres.uniq
    end

    def self.genre_count
        genre_hash = {}
        @@genres.each do |genre| 
            if genre_hash[genre] 
                genre_hash[genre] += 1 
            else
                genre_hash[genre] = 1
            end
        end
        genre_hash
    end

    def self.artists
        @@artists
        @@unique_artists = @@artists.uniq
    end

    def self.artist_count
        artist_hash = {}
        @@artists.each { |artist| artist_hash[artist] ? artist_hash[artist] += 1 : artist_hash[artist] = 1 }
        artist_hash
    end
end
