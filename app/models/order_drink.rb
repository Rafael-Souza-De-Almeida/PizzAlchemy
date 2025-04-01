class OrderDrink < ApplicationRecord
  belongs_to :order
  SIZE_PRICES = {
    "Lata" => 3.50,
    "1.5L" => 5.50,
    "2L" => 7.50
  }.freeze

  def calculate_price
    self.price = SIZE_PRICES[size] || 0
  end

  before_save :calculate_price
end
