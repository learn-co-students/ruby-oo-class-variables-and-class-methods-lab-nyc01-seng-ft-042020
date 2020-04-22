class Song

    attr_accessor :name, :artist, :genre
    
    @@artists = [] 
    @@count = 0
    @@genres = []

    def initialize (name, artist, genre) 
        @artists << artist
        @@genres << genre
        @count += 1
    end

end
