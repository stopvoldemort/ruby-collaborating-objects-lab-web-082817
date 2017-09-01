require 'pry'

class MP3Importer

  def initialize(path)
    @path = path
  end


  def path
    @path
  end


  def files
    @files = Dir.entries(@path)
    @files.select do |row|
      row.split("").last(3).join == "mp3"
    end
  end


  def import
    self.files.each do |file_name|
      Song.new_by_filename(file_name)
    end
  end

end
