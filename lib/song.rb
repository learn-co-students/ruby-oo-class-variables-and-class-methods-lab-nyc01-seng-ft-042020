require 'pry'

#song class
#each song has name, artist, genre variables
#song keeps track of number of songs made .count class variable
#show all arttists of existing songs .artists class variable
#show all genres of songs .genres class variable
#keep track of number of songs of each genre .genre_count class variable
#show number of songs for each artist .artist_count class variable


class Song 

    @@count = 0
    @@artists = []
    @@genres = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count +=1
        @@artists << artist
        @@genres << genre

    end

    # .count is a class method that returns that number of songs created
    def self.count
        return @@count
    end

    # .artists is a class method that returns a unique array of artists of existing songs
    def self.artists
        return @@artists.uniq
    end

    # .genres is a class method that returns a unique array of genres of existing songs
    def self.genres
        return @@genres.uniq
    end

    # .genre_count is a class method that returns a hash of genres and the number of songs that have those genres
    #                        genre_count is a hash   key = songs value = number            hash[key] = value
    # expect(Song.genre_count).to eq({"pop" => 1, "rap" => 2})

    def self.genre_count
        genre_count = {}
# binding.pry
            @@genres.each do |genre|
                if genre_count[genre] # = true
                    genre_count[genre] += 1
                else
                    genre_count[genre] = 1
                end
            end
            genre_count #return hash
    end

    # .artist_count is a class method that returns a hash of artists and the number of songs that have those artists

    def self.artist_count
        artist_count = {}

            @@artists.each do |artist|
                if artist_count[artist] # = true
                    artist_count[artist] += 1
                else
                    artist_count[artist] = 1
                end
            end
            artist_count #return hash


    end


end