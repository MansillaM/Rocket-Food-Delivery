class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.integer :user_id
      t.integer :address_id
      t.string :name
      t.integer :price_range
      t.timestamp :created_at
      t.timestamp :updated_at

      t.timestamps
    end
  end
end
