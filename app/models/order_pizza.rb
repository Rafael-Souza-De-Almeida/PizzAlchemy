class OrderPizza < ApplicationRecord
  validates :size, :crust, :flavor, :price, presence: true

  belongs_to :order

  SIZE_PRICES = {
    "Brotinho" => 30.0,
    "Media" => 40.0,
    "Grande" => 50.0,
    "Gigante" => 65.0
  }.freeze

  CRUST_PRICES = {
    "Tradicional" => 0,
    "Fina" => 2,
    "Pan" => 3,
    "Recheada" => 5
  }.freeze

  BORDER_PRICES = {
    "Sem borda" => 0,
    "Catupiry" => 7,
    "Cheddar" => 7,
    "Chocolate" => 8
  }.freeze

  SAUCE_PRICES = {
    "Tradicional" => 0,
    "Branco" => 3,
    "Apimentado" => 2
  }.freeze

  EXTRA_INGREDIENTS_PRICE = 3.0

  def calculate_price
    base_price =  SIZE_PRICES[size]
    crust_price = CRUST_PRICES[crust]
    border_price = BORDER_PRICES[border]
    sauce_price = SAUCE_PRICES[sauce]
    extras_ingredients_price = (ingredients || []).size * EXTRA_INGREDIENTS_PRICE

    self.price = base_price + crust_price + border_price + sauce_price + extras_ingredients_price
  end

  before_save :calculate_price
end
