class Song 
  attr_accessor :name, :artist 
  
  def initialize(name)
    @name = name 
  end 
  
  def self.new_by_filename(file)
    song_name = file.split("-")[1]
    artist= file.split ("-")[0]
    song= self.new 
  end
  
  def artist_name
      self.artist.name
    end
   
  
end 