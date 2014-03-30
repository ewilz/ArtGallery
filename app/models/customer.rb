class Customer < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true

  has_many :artworks,
    foreign_key: :purchase_id,
    class_name: 'Artworks'

    has_many :favorite_collections
end
