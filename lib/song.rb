class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = Song.new
    song.save
    song
  end
  def self.new_by_name (s_name)
    song = Song.new
    song.name = s_name 
    song
  end

  def self.create_by_name(s_name)
    song = Song.create
    song.name = s_name
    song
  end

  def self.find_by_name(s_name)
    @@all.find {|song| song.name == s_name}
  end

  def self.find_or_create_by_name(s_name)
    self.find_by_name(s_name) or self.create_by_name(s_name)
  end

  def self.alphabetical
    self.all.sort_by do |s|
      s.name
    end
  end

  def self.new_from_filename(filename)

  end
end
