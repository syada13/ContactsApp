class CreatePhoneNumbers < ActiveRecord::Migration[5.1]
  def change
    create_table :phone_numbers do |t|
      t.integer :home_phone_num
      t.integer :work_phone_num
      t.string :mobile_phone_num
      t.references :contact, foreign_key: true

      t.timestamps
    end
  end
end
