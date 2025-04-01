class AddOrderToOrderDrinks < ActiveRecord::Migration[8.0]
  def change
    add_reference :order_drinks, :order, null: false, foreign_key: true
  end
end
