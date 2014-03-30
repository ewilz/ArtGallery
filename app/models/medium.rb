class Medium < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true

  has_many :artworks,
    foreign_key: :medium_id,
    class_name: 'Artworks'
end
