class ChangeMediumToMediumInArtwork < ActiveRecord::Migration
  def change
    add_column :artworks, :media_id, :integer, null: false
    remove_column :artworks, :medium_id
  end
end
