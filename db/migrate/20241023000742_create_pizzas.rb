class CreatePizzas < ActiveRecord::Migration[8.0]
  def change
    create_table :pizzas do |t|
      t.string :name
      t.decimal :price
      t.text :description

      t.timestamps
    end
  end
end
