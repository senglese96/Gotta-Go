class CreateRestrooms < ActiveRecord::Migration[5.2]
  def change
    create_table :restrooms do |t|
      t.string :name, null: false
      t.integer :lon, null: false
      t.integer :lat, null: false
      t.string :description
      t.string :address
      t.timestamps
    end

    add_index :restrooms, :name
  end
end
