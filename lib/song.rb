class Song
    attr_accessor :name, :artist, :genre
    @@count = 0 # in lite of arguments, without this unitialized class variable error
    @@artists = [] 
    @@genres = []
    def initialize(song, artist, genre)
        @name = song
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
        @@artists.uniq #uniq = unique array
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count #returns a HASH of genres
        genre_count = Hash.new(0)
        @@genres.each {|genre| genre_count[genre] += 1} #iterate
        genre_count #return
    end

    #same as above
    def self.artist_count
        artist_count = Hash.new(0)
        @@artists.each {|artist| artist_count[artist] += 1}
        artist_count
    end
end
