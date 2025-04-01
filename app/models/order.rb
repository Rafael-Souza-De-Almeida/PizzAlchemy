class Order < ApplicationRecord
  has_many :order_pizzas, dependent: :destroy
  has_many :order_drinks, dependent: :destroy

  accepts_nested_attributes_for :order_pizzas
  accepts_nested_attributes_for :order_drinks

  def calculate_total_price
    self.total_price = order_pizzas.sum(:price) + order_drinks.sum(:price)
  end

  before_save :calculate_total_price
end
