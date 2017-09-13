class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :address_line1
      t.string :address_line2
      t.string :city
      t.string :state
      t.string :postal_code
      t.string :country
      t.references :contact,foreign_key: {on_delete: :cascade}
      t.timestamps 
    end
  end

  def self.down  
    drop_table :addresses  
  end
end
