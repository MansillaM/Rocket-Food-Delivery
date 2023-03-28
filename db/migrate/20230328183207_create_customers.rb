class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.integer :user_id
      t.integer :address_id
      t.boolean :subscription
      t.timestamp :created_at
      t.timestamp :updated_at

      t.timestamps
    end
  end
end
