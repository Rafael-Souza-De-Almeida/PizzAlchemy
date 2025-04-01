class CreateOrderDrinks < ActiveRecord::Migration[8.0]
  def change
    create_table :order_drinks do |t|
      t.string :name
      t.string :size
      t.decimal :price

      t.timestamps
    end
  end
end
