class CreateProductOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :product_orders do |t|
      t.integer :product_id
      t.integer :order_id
      t.integer :product_quantity
      t.integer :product_unit_cost
      t.timestamp :created_at
      t.timestamp :updated

      t.timestamps
    end
  end
end
