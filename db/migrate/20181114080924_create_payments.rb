class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.integer :cc_num
      t.float :cash_amt
      t.float :total
      t.float :tip

      t.timestamps
    end
  end
end
