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
        @@artists.push(artist)
        @@genres.push(genre)
        
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
        counts = {}
        @@genres.each do |genre|
            if counts[genre]
                counts[genre] += 1
            else
                counts[genre] = 1
            end
        end
        counts
    end

    def self.artist_count
        counts = {}
        @@artists.each do |artist|
            if counts[artist]
                counts[artist] += 1
            else
                counts[artist] = 1
            end
        end
        counts
    end

end 