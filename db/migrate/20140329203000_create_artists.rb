class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :birthplace
      t.string :style_of_art

      t.timestamps

    end
  end
end
