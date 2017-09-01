class Song

  def initialize(name, artist=nil)
    @name = name
    @artist = artist
    artist.add_song(self) if artist
  end

  attr_accessor :name, :artist

  def self.new_by_filename(filename)
    song = filename.split(" - ")[1]
    artist = filename.split(" - ")[0]
    artist_instance = Artist.find_or_create_by_name(artist)
    Song.new(song, artist_instance)
  end

end
