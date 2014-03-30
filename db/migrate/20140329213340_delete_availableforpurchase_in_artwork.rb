class DeleteAvailableforpurchaseInArtwork < ActiveRecord::Migration
  def up
    remove_column :artworks, :available_for_purchase
  end

  def down
    add_column :artworks, :available_for_purchase, :boolean
  end
end

