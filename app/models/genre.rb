class Genre < ApplicationRecord
  has_many :songs

  def all_related_songs
    byebug
    Genre.find_by(self.id)
  end
end
