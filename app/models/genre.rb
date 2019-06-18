class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    x = self.songs
    x.count
  end

  def artist_count
    x = self.artists
    x.count
  end

  def all_artist_names
    x = []
    y = self.artists.each do |artist|
      x << artist.name
    end
    x
  end

end
