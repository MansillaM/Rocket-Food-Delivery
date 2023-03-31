class CreateProductOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :product_orders do |t|
      t.integer :product_id,                    null: false, unique: true
      t.integer :order_id,                      null: false, unique: true
      t.integer :product_quantity,              null: false, min: 1
      t.integer :product_unit_cost,             null: false, default: 0, min: 0

      t.timestamps
    end
    add_foreign_key :product_orders, :products, column: :product_id, primary_key: "id"
    add_foreign_key :product_orders, :orders, column: :order_id, primary_key: "id"
  end
end
