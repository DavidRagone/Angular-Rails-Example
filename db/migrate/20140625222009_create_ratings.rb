class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :book_id, null: false
      t.integer :user_id, null: false
      t.integer :rating
      t.string :shelf

      t.timestamps
    end
  end
end
