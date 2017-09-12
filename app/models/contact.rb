class Contact < ApplicationRecord
  has_many :addresses
  has_many :phone_numbers
  accepts_nested_attributes_for :addresses, :reject_if => :all_blank, allow_destroy: true
  accepts_nested_attributes_for :phone_numbers, :reject_if => :all_blank, allow_destroy: true
end
