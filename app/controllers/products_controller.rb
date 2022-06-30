class ProductsController < ApplicationController
  def product
    products = Product.all
    render json: products.as_json
  end
end
