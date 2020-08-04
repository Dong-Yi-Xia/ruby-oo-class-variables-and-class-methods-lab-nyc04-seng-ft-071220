require 'pry'

class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []


    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres.push(self.genre)
        @@artists.push(self.artist)
        # binding.pry
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
        genre_array = self.genres
        genre_hash = {}
        genre_array.each do |name|
            genre_hash[name] = @@genres.count{|x| x == name} 
        end
        genre_hash
    end

    def self.artist_count
        artist_array = self.artists
        artist_hash = {}
        artist_array.each do |name|
            artist_hash[name] = @@artists.count{|x| x == name} 
        end
        artist_hash
        # binding.pry
    end


end