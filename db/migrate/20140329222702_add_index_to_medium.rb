class AddIndexToMedium < ActiveRecord::Migration
  def up
    add_index :media, :name, unique: true
  end

  def down
    remove_index :media, :name
  end
end
