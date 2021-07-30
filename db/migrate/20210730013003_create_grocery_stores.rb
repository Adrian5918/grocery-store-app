class CreateGroceryStores < ActiveRecord::Migration[6.1]
  def change
    create_table :grocery_stores do |t|
      t.string :name
      t.string :address

      t.timestamps
    end
  end
end
