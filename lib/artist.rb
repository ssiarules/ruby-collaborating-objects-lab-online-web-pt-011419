class Artist 
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = []
  end 
  
  def songs
    @songs 
  end 
  
  def add_song(song)
    @songs << song
  end 
  
  def save
    @@all << self #self is an instance of the Artist class
  end 
  
  def self.all
    @@all
  end 
  
  def self.find_or_create_by_name(artist_name)
    found_artist = self.all.find {|artist| artist.name == artist_name}
    if found_artist
      found_artist
    else
      new_artist = self.new(artist_name)
      new_artist.save
      new_artist
    end
  end
  
  # def self.find_or_create_by_name(name)
  #   self.all.find {|artist| artist.name == name} || self.new(name).save
  # end 
  
  def print_songs 
    @songs.each do |song|
      puts song.name 
    end 
  end 
end 