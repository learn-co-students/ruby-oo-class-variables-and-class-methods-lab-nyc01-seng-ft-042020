class Song
    @@count = 0
    @@genres = []
    @@artists = []
    attr_accessor :name, :artist, :genre
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
       @@genres.uniq
    end 
    def self.artists
        @@artists.uniq
    end
    def self.genre_count
        genre_hash = {}
        @@genres.each do |genre_name|
            if genre_hash[genre_name]
                genre_hash[genre_name] = 1
            else 
                genre_hash[genre_name] += 1
            end 
            genre_hash
        end
        
        # describe ".genre_count" do 
        #     it "is a class method that returns a hash of genres and the number of songs that have those genres" do 
        #       expect(Song.genre_count).to eq({"pop" => 1, "rap" => 2})
        #     end
        #   end
    end 
end 