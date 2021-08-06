class OrdersController < ApplicationController
  before_action :authenticate_user
  def index
    orders = Order.where(user_id:
    current_user.id)
    render json: orders.as_json
    end

    def create
      order = Order.new(
        user_id: params[:user_id],
        subtotal: params[:subtotal],
        tax: params[:tax],
        total: params[:total]
      )
      order.save!
      render json: order.as_json
    end
end
