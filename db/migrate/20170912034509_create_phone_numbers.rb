class CreatePhoneNumbers < ActiveRecord::Migration[5.1]
  def change
    create_table :phone_numbers do |t|
      t.string :home_phone_num
      t.string :work_phone_num
      t.string :mobile_phone_num
      t.references :contact, foreign_key: {on_delete: :cascade}
      t.timestamps
    end
  end

  def self.down  
    drop_table :phone_numbers  
  end
end
