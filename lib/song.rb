class Song
  attr_accessor :name, :artist

  @@all_songs = []
  
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