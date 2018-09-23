class ShoppingCartItem < ApplicationRecord
  belongs_to :shoppingCart
  belongs_to :product
end
