Rails.application.routes.draw do
  get "/all_products" => "products#index"

  get "/index" => "products#index"

  get "/one_product/:id" => "products#oneproduct"
end
