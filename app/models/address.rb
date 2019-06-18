class Address < ApplicationRecord
  belongs_to :user
  validates :phone, :address_line_1, :address_line_2, :city, :country, :zip_code, presence: true
end
