Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/products", controller: "products", action: "index"
  get "/groceryStores", controller: "stores", action: "index"
  get "/users", controller: "users", action: "index"

  post "/users", controller: "users", action: "create"

  post "/sessions" => "sessions#create"
end
