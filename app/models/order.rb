class Order < ApplicationRecord
  belongs_to :user
  has_many :product_carts


  def tax
    subtotal * 0.11
  end

  def total
    subtotal + tax
  end
end