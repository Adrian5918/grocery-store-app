class AddToStores < ActiveRecord::Migration[6.1]
  def change
    add_column :grocery_stores, :image_url, :string
  end
end
