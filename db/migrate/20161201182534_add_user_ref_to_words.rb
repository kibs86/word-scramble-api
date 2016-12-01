class AddUserRefToWords < ActiveRecord::Migration
  def change
    # add_reference :words, :owner, index: true, foreign_key: { to_table: :users }
    add_column :words, :owner_id, :integer
    add_foreign_key :words, :users, column: :owner_id, primary_key: :id
    add_index :words, :owner_id
  end
end
