class CreateShoppingCarts < ActiveRecord::Migration[5.1]
  def change
    create_table :shopping_carts do |t|
      t.references :appointment, foreign_key: true
      t.references :volunteer, foreign_key: true
      t.date :purchaseDate
      t.timestamps
    end
  end
end
