class AddIndexToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :customer_name, :string
    add_index :orders, :customer_name
  end
end
