class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :restaurant_id,                    null: false, unique: true
      t.integer :customer_id,                      null: false, unique: true
      t.integer :status_id,                        null: false, unique: true
      t.integer :restaurant_rating,                min: 1, max: 5

      t.timestamps                                 null: false, default: -> { 'NOW()' }
    end
    add_foreign_key :orders, :restaurants, column: :restaurant_id, primary_key: "id"
    add_foreign_key :orders, :customers, column: :customer_id, primary_key: "id"
    add_foreign_key :orders, :order_statuses, column: :status_id, primary_key: "id"
  end
end
