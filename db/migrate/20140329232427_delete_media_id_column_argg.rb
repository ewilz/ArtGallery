class DeleteMediaIdColumnArgg < ActiveRecord::Migration
  def change
    remove_column :artworks, :media_id
  end
end
