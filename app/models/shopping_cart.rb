class ShoppingCart < ApplicationRecord
  belongs_to :appointment
  belongs_to :volunteer
end
