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
        # Originally had '@@genres << genre if @@genres.include?(genre)'
        # Changed to using @@genres.uniq in #self.genre_count 
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

    def self.artist_count 
        artist_count = {}
        @@artists.each do |artist|
            if artist_count[artist] then
                artist_count[artist] += 1
            else 
                artist_count[artist] = 1 
            end 
        end
        artist_count 
    end 

    def self.genre_count 
        genre_count = {}
        @@genres.each do |genre|
            if genre_count[genre] then
                genre_count[genre] += 1 
                else 
                    genre_count[genre] = 1 
                end 
            end 
        genre_count
    end 

end 

# Note 
# genre_count and artist_count are similar. 
# it might be good to create a helper method that takes in a 
# collection (i.e. 'genres', 'artists') as an argument and 
# returns the new collection. 
#

