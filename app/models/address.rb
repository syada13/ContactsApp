class Address < ApplicationRecord
  belongs_to :contact
  validates_presence_of :address_line1, :address_line2 , :city , :state ,:postal_code ,:country
  validates :address_line1, :address_line2, length: {minimum: 1, maximum: 100}
  validates :city,length: {minimum: 3, maximum: 50}
  validates :state,length: {minimum: 2, maximum: 100}
  validates :postal_code,length: {minimum: 5, maximum: 10}
  validates :country,length: {minimum: 2, maximum: 100}
end
