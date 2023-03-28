class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :street_address
      t.string :city
      t.string :postal_code
      t.timestamp :created_at
      t.timestamp :updated_at

      t.timestamps
    end
  end
end
