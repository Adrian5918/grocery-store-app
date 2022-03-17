class Order < ApplicationRecord
  belongs_to :user
  has_many :carted_products


  def tax
    subtotal * 0.11
  end

  def total
    subtotal + tax
  end
end