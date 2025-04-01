class ChangeOrderPizzaColumn < ActiveRecord::Migration[8.0]
  def change
    remove_reference :order_pizzas, :pizza, foreign_key: true
  end
end
