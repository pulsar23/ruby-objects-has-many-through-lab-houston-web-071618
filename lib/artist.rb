class Artist

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
  end

  def songs
    Song.all.select {|item| item.artist == self}
  end #songs

  def genres
    self.songs.map do |item|
      item.genre
    end
  end #genre

end #class Artist
