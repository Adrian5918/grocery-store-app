class OrdersController < ApplicationController
  # before_action :authenticate_user
  def index
    # orders = Order.where(user_id:current_user.id)
    orders = Order.all
    render json: orders.as_json
    end

def create
    # figure out which carted_products are in the shopping cart
    carted_products = current_user.carted_products.where(status: "carted")
    # 291
    calculated_subtotal = 0
    calculated_tax = 0
    carted_products.each do |cp|
      # find out how much each of them cost
      # add that all together
      calculated_subtotal += cp.product.price
      # tax + total
      calculated_tax += cp.product.tax 
    end


    
    order = Order.new(
      user_id: current_user.id,
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_subtotal + calculated_tax,
    )
    # save the order
    order.save
    
    # go back and update the carted_products with the order id
    carted_products.each do |cp|
      cp.update(status: "purchased", order_id: order.id)
    end

    render json: order.as_json
  end
end