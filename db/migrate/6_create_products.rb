class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.integer :restaurant_id,         null: false, unique: true
      t.string :name,                   null: false
      t.string :description,            null: false
      t.integer :cost,                  null: false, min: 1

      t.timestamps
    end
    add_foreign_key :products, :restaurants, column: :restaurant_id, primary_key: "id"
  end
end
