class Song
  attr_accessor :name

  @@all_songs = []
  def artist=(artist)
    @artist = artist
    artist.songs << self
    Artist.song_count+=1
  end
  def artist
    return @artist
  end
  def self.all_songs
    return @@all_songs
  end
  def initialize(name)
    @name = name
    @@all_songs << self
  end

  def artist_name
    if @artist == nil
      return nil
    else
      @artist.name
    end
  end
end