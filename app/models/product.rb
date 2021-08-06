class Product < ApplicationRecord
  def tax
    price * 0.11
  end

  def total
    price + tax
  end

  has_many :orders
  has_many :carted_products
end