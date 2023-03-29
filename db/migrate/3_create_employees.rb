class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.integer :user_id

      t.timestamps
    end
    add_foreign_key :employees, :users, column: :user_id, primary_key: "id"
  end
end
