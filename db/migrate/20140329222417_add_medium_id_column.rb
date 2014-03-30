class AddMediumIdColumn < ActiveRecord::Migration
  def change
    add_column :artworks, :medium_id, :integer, null: false
  end
end
