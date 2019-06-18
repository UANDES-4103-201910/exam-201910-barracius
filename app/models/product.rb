class Product < ApplicationRecord
  has_many :orders_products
  has_many :orders, through: :orders_products

  validates :brand, :model, :price, :short_description, :long_description, presence: true
end
