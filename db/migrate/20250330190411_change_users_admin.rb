class ChangeUsersAdmin < ActiveRecord::Migration[6.0]
  def up
    change_column :users, :admin, :boolean, default: false, null: false
  end

  def down
    change_column :users, :admin, :boolean, null: true, default: nil
  end
end
