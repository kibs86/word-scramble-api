class RemoveCreatorFromWord < ActiveRecord::Migration
  def change
    remove_column :words, :creator, :string
  end
end
