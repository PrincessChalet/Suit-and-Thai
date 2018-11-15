class CreateSingleOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :single_orders do |t|
      t.string :item
      t.float :price
      t.string :recipient
      t.integer :tableID

      t.timestamps
    end
  end
end
