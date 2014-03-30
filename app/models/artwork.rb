class Artwork < ActiveRecord::Base
  validates :title, presence: true
  validates :artist_id, presence: true
  validates :date, presence: true
  validates :medium_id, presence: true

  belongs_to :artist,
    foreign_key: :artist_id,
    class_name: 'Artist'
  belongs_to :medium,
  foreign_key: :medium_id,
  class_name: 'Medium'
  belongs_to :purchase,
    foreign_key: :purchase_id,
    class_name: 'Customer'
  belongs_to :collection,
    foreign_key: :collection_id,
    class_name: 'Collection'


end
