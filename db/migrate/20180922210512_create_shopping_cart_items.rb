class CreateShoppingCartItems < ActiveRecord::Migration[5.1]
  def change
    create_table :shopping_cart_items do |t|
      t.references :shopping_cart, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
