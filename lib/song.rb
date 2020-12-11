require 'pry'
class Song
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count
  attr_reader :name, :artist, :genre
  def initialize(name, artist, genre)
    @name = name
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
    unique_list = []
    @@artists.each {|artist| unique_list << artist if !unique_list.include?(artist)}
    unique_list
  end
  def self.genres
    unique_list = []
    @@genres.each {|genre| unique_list << genre if !unique_list.include?(genre)}
    unique_list
  end
  def self.genre_count
    count = {}
    @@genres.each {|genre| count[genre] =  count[genre] ? count[genre]+1 : 1}
    count
  end
  def self.artist_count
    count = {}
    @@artists.each {|artist| count[artist] =  count[artist] ? count[artist]+1 : 1}
    count
  end
end