class User < ApplicationRecord
  has_secure_password
validates :email, presence: true, uniqueness: true,

has_many :orders
has_many :product_carts
end
