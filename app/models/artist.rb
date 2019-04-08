class Artist < ApplicationRecord
  has_many :songs
  has_many :genres, through: :songs


  def find_songs
    Song.all.find_by(artist_id: self.id)
  end
end
