class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.string :title, null: false
      t.integer :artist_id, null: false
      t.datetime :date, null: false
      t.datetime :date_on_sale
      t.decimal :price
      t.integer :medium_id, null: false
      t.boolean :available_for_purchase, null: false
      t.integer :collection_id

      t.timestamps



    end
  end
end
