class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :restaurant_id
      t.integer :customer_id
      t.integer :status_id
      t.integer :restaurant_rating
      t.timestamp :created_at
      t.timestamp :updated_at

      t.timestamps
    end
  end
end
