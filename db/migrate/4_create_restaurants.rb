class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.integer :user_id
      t.integer :address_id
      t.string :name
      t.integer :price_range

      t.timestamps
    end
    add_foreign_key :restaurants, :users, column: :user_id, primary_key: "id"
    add_foreign_key :restaurants, :addresses, column: :address_id, primary_key: "id"
  end
end
