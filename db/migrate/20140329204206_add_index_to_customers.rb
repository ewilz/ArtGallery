class AddIndexToCustomers < ActiveRecord::Migration
  def up
    add_index :customers, :email, unique: true
  end

  def down
    remove_index :customers, :email
  end
end
