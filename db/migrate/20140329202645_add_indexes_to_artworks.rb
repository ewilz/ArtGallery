class AddIndexesToArtworks < ActiveRecord::Migration
  def up
    add_index :artworks, :artist_id
    add_index :artworks, :medium_id
  end

  def down
    remove_index :artworks, column: :artist_id
    remove_index :artworks, column: :medium_id
  end
end
