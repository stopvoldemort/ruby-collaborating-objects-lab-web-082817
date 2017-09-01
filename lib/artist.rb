class Artist

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  attr_accessor :name, :songs

  def add_song(song)
    @songs << song
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find(name)
    @@all.detect {|artist| artist.name == name}
  end

  def self.find_or_create_by_name(name)
    if Artist.find(name)
      Artist.find(name)
    else
      Artist.new(name)
    end
  end


end
