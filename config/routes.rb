Rails.application.routes.draw do
  get "/products", controller: "product", action: "all_products"
end
