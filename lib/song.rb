require 'pry'

class Song 

    @@count = 0
    @@genres= []
    @@artists = []

    attr_accessor(:name, :artist, :genre)
    
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        #I need a getter
        @@count += 1
        add_genres
        add_artist
        @@artists << artist
        # unique
    end
    #gives initalize access to the class variable
    def self.count
        @@count
    end
    def self.genres
        @@genres
    end

    def self.artists
        @@artists
    end

    def self.genre_count
        puts "You hit the method"
        @@genres.tally
    end
    def self.artist_count
        puts "hit artist count"
        @@artists.tally
    end
    # def unique
    #     @@artists.uniq
    #     @@genres.uniq
    # end
end

