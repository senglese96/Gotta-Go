class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :restroom_id, null: false
      t.integer :user_id, null: false
      t.integer :access, null: false
      t.integer :quality, null: false
      t.string :notes
      t.string :directions
      t.timestamps
    end

    add_index :reviews, :user_id
    add_index :reviews, :restroom_id
  end
end
