class CreateOrderPizzas < ActiveRecord::Migration[8.0]
  def change
    create_table :order_pizzas do |t|
      t.string :size
      t.string :crust
      t.string :flavor
      t.text :ingredients
      t.string :border
      t.string :sauce
      t.decimal :price
      t.references :pizza, null: false, foreign_key: true

      t.timestamps
    end
  end
end
