class Genre

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    #Lists each artist in the class variable
     self.artists.map {|item| item.artist}

  end

  def new_song(name, artist)
    song = Song.new(name, artist, self)
  end

  def songs
    #iterates through all songs & finds songs that belong
    #to that genre.
     Song.all.select {|item| item.genre == self}
  end

  def artists
    #iterates over the genre's collection of songs
    #and collects the artist that owns each song.
    self.songs.map {|item| item.artist}
  end



end
