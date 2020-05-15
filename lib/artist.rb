<<<<<<< HEAD
require 'pry'

class Artist 
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    save
  end
  
  def self.all 
    @@all 
  end
  
  def save
    @@all << self
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
    song
  end
  
  def self.find_or_create_by_name(name)
    self.find(name) || self.create(name)
  end 
  
  def self.find(name)
    self.all.detect {|artist| artist.name == name }
  end
  
  def self.create(name)
    artist = self.new(name)
    artist.name = name
    artist
  end
  
  def print_songs
    puts self.songs.map {|song| song.name}
  end

=======
require 'pry'

class Artist 
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    save
  end
  
  def self.all 
    @@all 
  end
  
  def save
    @@all << self
    self
  end 
  
  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
    song
  end
  
  def self.find_or_create_by_name(name)
    self.all.detect {|artist| artist.name == name} || Artist.new(name).save
  end 
  
  def self.find(name)
    self.all.detect {|artist| artist.name == name}
  end
  
  def self.create(name)
    artist = Artist.new(name)
    artist.save
    artist
  end
  
  def print_songs
    puts self.songs.map {|song| song.name}
  end

>>>>>>> 4d0fb9522021c3a79715b5df0f1dfa29ed70ca68
end