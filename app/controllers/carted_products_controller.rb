class CartedProductsController < ApplicationController
  def index
    carted_products = CartedProduct.where(status: "carted")
    render json: carted_products.as_json
  end

  def create
    carted_products = CartedProduct.new(
      user_id: params[:user_id],
      product_id: params[:product_id],
      quantity: params[:quantity],
      order_id: params[:order_id],
    )
    carted_products.save!
    render json: carted_products.as_json
  end
end
