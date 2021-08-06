Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/products", controller: "products", action: "index"

  get "/products/:id", controller: "products", action: "show"

  get "/groceryStores", controller: "stores", action: "index"

  post "/users", controller: "users", action: "create"

  get "/users", controller: "users", action: "index"

  post "/sessions" => "sessions#create"

  post "/orders", controller:"orders", action: "create"

  post "/carted_products", controller: "carted_products", action: "create"

end
