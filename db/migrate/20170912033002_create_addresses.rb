class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :address_line1
      t.string :address_line2
      t.string :city
      t.string :state
      t.integer :postal_code
      t.string :country
      t.references :contact, foreign_key: true

      t.timestamps
    end
  end
end
