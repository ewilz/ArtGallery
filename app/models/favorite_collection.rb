class FavoriteCollection < ActiveRecord::Base
  validates :customer_id, presence: true
  validates :collection_id, presence: true

  belongs_to :customer
  belongs_to :collection


end
