class OrdersController < ApplicationController
  def index
    @order = Order.where(user_id: current_user.id)
    render json: @order.as_json
  end
end

  def create
    @order = Order.find_by(id: params[:id])
      user_id: params[:user_id],
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: params[:subtotal],
      tax: params[:tax],
      total: params[:total],
    )
    if @order.save
      render :show
    else
      render json: { errors: @order.errors.full_messages },
             status: 418
    end
  end
end

  def show
    @order = Order.find_by(id: params[:id])
    render json: @order.as_json
  end
end
