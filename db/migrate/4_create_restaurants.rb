class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.integer :user_id,                    null: false, unique: true
      t.integer :address_id,                 null: false
      t.string :name,                        null: false
      t.string :email,                       null: false
      t.string :phone,                       null: false
      t.integer :price_range,                null: false, default: 1

      t.timestamps
    end
    add_foreign_key :restaurants, :users, column: :user_id, primary_key: "id"
    add_foreign_key :restaurants, :addresses, column: :address_id, primary_key: "id"
  end
end
