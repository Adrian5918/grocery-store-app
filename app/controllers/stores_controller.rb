class StoresController < ApplicationController
  def index
    groceryStore = GroceryStore.all
    render json: groceryStore.as_json
  end
end
