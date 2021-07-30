class CreateModels < ActiveRecord::Migration[6.1]
  def change
    create_table :models do |t|
      t.string :user
      t.string :name
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
