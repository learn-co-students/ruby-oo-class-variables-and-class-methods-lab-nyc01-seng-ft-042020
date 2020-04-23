class Song
    @@all = []
    @@count =0
    @@genres = []
    @@artists =[]

    attr_accessor :name, :genre, :artist
    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        
        @@genres<<genre
        @@artists<<artist
        @@all << self
        @@count+=1
    end
    def self.all
        @@all
    end
    def self.count
        @@count
    end
    def self.artists
        myArtists = @@artists.uniq
    end
    def self.artist_count
        myObj={}
        @@artists.each do |i|
            if(myObj[i])
                 myObj[i]=myObj[i]+1
             else
                 myObj[i]=1
             end
        end
        myObj
    end
    def self.genres
        myGenres = @@genres.uniq
    end
    def self.genre_count
        myObj={}
        @@genres.each do |i|
            if(myObj[i])
                myObj[i]=myObj[i]+1
            else
                myObj[i] = 1
            end
        end
        myObj
    end

end

firstSong = Song.new("99 Problems", "Jay-Z", "rap")
firstSong = Song.new("98 Problems", "Jay-Z", "rap")
firstSong = Song.new("98 Problems", "Jay-x", "rap")
firstSong = Song.new("98 Problems", "Jay-y", "rap")
firstSong = Song.new("98 Problems", "Jay-a", "rap")
firstSong = Song.new("98 Problems", "Jay-f", "rap")
firstSong = Song.new("98 Problems", "Jay-f", "rap")

puts Song.artist_count