class CreateTests < ActiveRecord::Migration[7.0]
  def change
    create_table :tests do |t|
      t.integer :test_id
      t.string :test_name

      t.timestamps
    end
  end
end
