class CreateWaitstaffs < ActiveRecord::Migration[5.2]
  def change
    create_table :waitstaffs do |t|
      t.integer :tables
      t.string :customer_names
      t.integer :waitstaff_id
      t.string :waitstaff_name

      t.timestamps
    end
  end
end
