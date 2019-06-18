class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    x = self.songs.first
    x.genre
  end

  def song_count
    x = self.songs
    x.count
  end

  def genre_count
    x = self.genres
    x.count
  end

end
