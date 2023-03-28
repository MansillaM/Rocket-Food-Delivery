class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.integer :user_id
      t.timestamp :created_at
      t.timestamp :updated_at

      t.timestamps
    end
  end
end
