class CreateKitchenStaffs < ActiveRecord::Migration[5.2]
  def change
    create_table :kitchen_staffs do |t|
      t.string :chef_name

      t.timestamps
    end
  end
end
