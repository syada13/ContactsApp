class Contact < ApplicationRecord
  has_many :addresses , dependent: :destroy
  has_many :phone_numbers, dependent: :destroy
  accepts_nested_attributes_for :addresses, :reject_if => :all_blank, allow_destroy: true
  accepts_nested_attributes_for :phone_numbers, :reject_if => :all_blank, allow_destroy: true
end
