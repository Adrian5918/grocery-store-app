class Order < ApplicationRecord
  belongs_to :user
  belongs_to :products
  has_many :product_carts


  def tax
    subtotal * 0.11
  end

  def total
    subtotal + tax
  end
end