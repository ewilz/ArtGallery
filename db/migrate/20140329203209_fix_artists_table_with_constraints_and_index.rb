class FixArtistsTableWithConstraintsAndIndex < ActiveRecord::Migration
  def up
    change_column :artists, :first_name, :string, null: false
    change_column :artists, :last_name, :string, null: false
    change_column :artists, :email, :string, null: false

    add_index :artists, :email, unique: true
  end

  def down
    change_column :artists, :first_name, :string
    change_column :artists, :last_name, :string
    change_column :artists, :email, :string

    remove_index :artists, :email
  end
end
