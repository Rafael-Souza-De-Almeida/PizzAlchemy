class CreateOrders < ActiveRecord::Migration[8.0]
  def change
    create_table :orders do |t|
      t.decimal :total_price, precision: 8, scale: 2, default: 0

      t.timestamps
    end
  end
end
