class OrdersController < ApplicationController
  def index
    orders = current_user.orders
    render json: orders.as_json
  end

  def create
    order = Order.new(
      user_id: current_user.id,
      product_id: params["product_id"],
      quantity: params["quantity"],
      subtotal: params["subtotal"],
      tax: params["tax"],
      subtotal: ["subtotal"],
      )
      order.save
      render json
    end
  end

  def show
    order = Order.find_by(id: params[:id])
    render json: order.as_json
  end
end
