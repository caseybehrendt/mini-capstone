Rails.application.routes.draw do
  get "/products" => "products#index"

  get "/products" => "products#new"

  get "/product/:id" => "products#show"

  post "products" => "products#create"

  patch "/products/:id" => "products#update"

  delete "products/:id" => "products#destroy"

  get "/supplier" => "supplier#index"

  get "/supplier/:id" => "supplier#show"

  post "/users" => "users#create"

  post "/sessions" => "sessions#create"

  post "/order" => "order#create"

  get "/order" => "order#show"

  get "/order" => "order#index"
end
