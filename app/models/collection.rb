class Collection < ActiveRecord::Base
  validates :name, presence: true
  has_many :artworks
  has_many :favorite_collections
  has_many :artists,
    through: :artworks


  def size
    self.artworks.size
  end

  def number_of_artists
    self.artists.count
  end


end
