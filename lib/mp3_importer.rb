#parse filename and send to song class
#should have path attribute in initialization
#two methods: files and import 

class MP3Importer
  attr_accessor :path 
  
  def initialize(path)
    @path = path 
  end 
  
  def files
    #only wants .mps files 
    Dir.entries(path).select {|entry| entry.include?(".mp3")}
  end 
  
  def import
    #new files arrays put it through the song class method new by file name
    files.each {|filename| Song.new_by_filename(filename)}
  end 
  
end 