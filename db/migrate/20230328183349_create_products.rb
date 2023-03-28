class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.integer :restaurant_id
      t.string :name
      t.string :description
      t.integer :cost
      t.timestamp :created_at
      t.timestamp :updated_at

      t.timestamps
    end
  end
end
