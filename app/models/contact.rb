class Contact < ApplicationRecord
  has_many :addresses , dependent: :destroy
  has_many :phone_numbers, dependent: :destroy
  accepts_nested_attributes_for :addresses, :reject_if => :all_blank, allow_destroy: true
  accepts_nested_attributes_for :phone_numbers, :reject_if => :all_blank, allow_destroy: true
  validates_presence_of :first_name, :last_name, :gender
  validates :first_name, :last_name, length: {minimum: 3, maximum: 20}
  validates :gender, length: {minimum: 1, maximum: 7}
end
