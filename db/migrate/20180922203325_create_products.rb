class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :color
      t.string :size
      t.boolean :instock
      t.integer :quantity
      t.string :category
      t.string :subcategory
      t.timestamps
    end
      # add_reference :products, :category, index: true
      # add_reference :products, :subcategory, index: true
  end
end
