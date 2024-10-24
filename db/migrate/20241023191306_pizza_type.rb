class PizzaType < ActiveRecord::Migration[8.0]
  def change
    add_column :pizzas, :pizza_type, :string, null: false
  end
end
