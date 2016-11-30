class CreateCompletedWords < ActiveRecord::Migration
  def change
    create_table :completed_words do |t|
      t.references :user, index: true, foreign_key: true
      t.references :word, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
