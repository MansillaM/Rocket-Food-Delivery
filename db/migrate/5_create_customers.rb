class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.integer :user_id
      t.integer :address_id
      t.boolean :subscription

      t.timestamps
    end
    add_foreign_key :customers, :addresses, column: :address_id, primary_key: "id"
    add_foreign_key :customers, :users, column: :user_id, primary_key: "id"
  end
end
