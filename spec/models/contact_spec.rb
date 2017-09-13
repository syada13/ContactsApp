require 'rails_helper'



RSpec.describe Contact, type: :model do
  before(:each) do
    @contact = Contact.create!(first_name: "Suresh1",middle_name: "Kumar1", last_name: "Yadav1", gender: "Male")
    @address = Address.create!(address_line1: "R004", address_line2: "Prateek Wisteria Sector 77", city: "Noida", state: "UP",postal_code: "201304", country: "INDIA", contact_id: @contact.id)
    @phone_number = PhoneNumber.create!(home_phone_num: "9810162389", work_phone_num: "1203806886", mobile_phone_num: "6123567093", contact_id: @contact.id)
  end 
  
  describe "creation" do
     it "should have one item created after being created" do
       expect(Contact.all.count).to eq(1)
       expect(Address.all.count).to eq(1)
       expect(PhoneNumber.all.count).to eq(1)
    end 
  end 
  
  describe "validation" do
     it "should not let a contact be created without first_name, last_name and gender" do
       @contact.first_name = nil
       @contact.last_name = nil
       @contact.gender = nil
       expect(@contact).to_not be_valid
    end 
  end
  
  describe "validation" do
     it "should contact deletion delete addresses and phone numbers" do
       @contact.destroy!
       expect(@contact.addresses.count).to eq(0)
       expect(@contact.phone_numbers.count).to eq(0)
    end 
  end
  
end
