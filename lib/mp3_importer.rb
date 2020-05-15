require 'pry'

class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path 
    @files = Dir.entries(path).grep(/.*\.mp3/)
  end
  
  def files
    @files
  end
  
  def import
<<<<<<< HEAD
    files.each { |file| Song.new_by_filename(file) }
=======
  @files.each {|filename| Song.new_by_filename(filename)}
>>>>>>> 4d0fb9522021c3a79715b5df0f1dfa29ed70ca68
  end
  
end