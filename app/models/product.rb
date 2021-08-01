class Product < ApplicationRecord
  def tax
    price * 0.11
  end

  def total
    price + tax
  end
end