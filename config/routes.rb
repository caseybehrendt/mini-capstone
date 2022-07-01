Rails.application.routes.draw do
  get "/products" => "products#index"

  get "/index" => "products#index"

  get "/product/:id" => "products#product"

  post "products" => "products#create"

  patch "/products/:id" => "products#update"

  delete "products/:id" => "products#destroy"
end
