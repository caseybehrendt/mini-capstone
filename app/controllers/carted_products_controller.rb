class CartedProductsController < ApplicationController
  def create
    carted_products = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "carted",
    )
    carted_products.save #happy path
    render json: carted_products.as_json
  end
end
