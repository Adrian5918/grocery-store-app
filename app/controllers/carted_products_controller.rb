class CartedProductsController < ApplicationController
  def index
    carted_products = CartedProduct.where(status: "carted", user_id: 6)
    render json: carted_products
  end

  def create
    carted_product = CartedProduct.new(
      product_id: params[:product_id],
      # quantity: params[:quantity],
      user_id: current_user.id,
      #order_id: params[:order_id],
      status: "carted",
    )
    carted_product.save!
    render json: carted_product.as_json
  end
end
