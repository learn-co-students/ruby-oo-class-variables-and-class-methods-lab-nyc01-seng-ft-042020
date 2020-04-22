
class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []
    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << @genre
        @@artists << @artist
        @@genre_count = {}
        @@artist_count = {}
    end 

def self.count
    @@count
end 

def self.genres
@@genres = @@genres.uniq
end

def self.artists
@@artists = @@artists.uniq
end

# def self.genre_count
# ans = {}
# self.genres.each do |e|
#     ans[e] = 0
   
# end
# ans.each do |k,v|
#   if 
#   puts "k is #{k}"
#   puts "v is #{v}"
# if k 
#     v = v +1 
# end
# end
# ans
# end

def self.genre_count
  @@genres = @@genres.to_a
  @@genres.each do |e|
  if @@genre_count[e]
    @@genre_count[e] += 1
  else 
    @@genre_count[e] = 0
    @@genre_count[e] += 1
  end 
end
  @@genre_count
end


def self.artist_count
        @@artists = @@artists.to_a
        @@artists.each do |e|
        if @@artist_count[e]
          @@artist_count[e] += 1
        else 
          @@artist_count[e] = 0
          @@artist_count[e] += 1
        end 
      end
        @@artist_count
      end
      

end


