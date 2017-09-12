# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).


c1 = Contact.create(first_name: "Suresh",middle_name: "Kumar", last_name: "Yadav", gender: "Male")
Address.create(address_line1: "R002", address_line2: "Prateek Wisteria Sector 77", city: "Noida", state: "UP",postal_code: "201304", country: "INDIA", contact_id: c1.id)
PhoneNumber.create(home_phone_num: "9810162380", work_phone_num: "1203806887", mobile_phone_num: "6123567092", contact_id: c1.id)


c2 = Contact.create(first_name: "Danny", last_name: "Ybarra", gender: "Male")
Address.create(address_line1: "613 NW", address_line2: "Loop 410", city: "San Antonio", state: "TX",postal_code: "78216", country: "US", contact_id: c2.id)
PhoneNumber.create(home_phone_num: "9999999999", work_phone_num: "1203806887", mobile_phone_num: "210-336-3692", contact_id: c2.id)




