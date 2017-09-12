class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :gender
      t.timestamps
    end
  end
  def self.down  
      drop_table :contacts  
    end
end
