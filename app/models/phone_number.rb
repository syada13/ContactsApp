class PhoneNumber < ApplicationRecord
  belongs_to :contact
  validates_presence_of  :home_phone_num, :work_phone_num, :mobile_phone_num
  validates  :home_phone_num, :work_phone_num, :mobile_phone_num, length: {minimum: 10, to_short: "#{count} is minimum required lenth"}
end
