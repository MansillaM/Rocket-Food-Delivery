class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :restaurant_id
      t.integer :customer_id
      t.integer :status_id
      t.integer :restaurant_rating

      t.timestamps
    end
    add_foreign_key :orders, :restaurants, column: :restaurant_id, primary_key: "id"
    add_foreign_key :orders, :customers, column: :customer_id, primary_key: "id"
    add_foreign_key :orders, :order_statuses, column: :status_id, primary_key: "id"
  end
end
