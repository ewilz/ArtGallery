class Artist < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true

  has_many :artworks
  has_many :collections,
    through: :artworks
end
