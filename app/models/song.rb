class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    x = self.genre
    x.name
  end

  def drake_made_this
    drake = Artist.new(name: "Drake")
    drake.songs << self
    drake
  end

end
