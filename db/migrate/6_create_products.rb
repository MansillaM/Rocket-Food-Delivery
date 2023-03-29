class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.integer :restaurant_id
      t.string :name
      t.string :description
      t.integer :cost

      t.timestamps
    end
    add_foreign_key :products, :restaurants, column: :restaurant_id, primary_key: "id"
  end
end
