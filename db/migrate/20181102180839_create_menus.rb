class CreateMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :menus do |t|
      t.string :item_name
      t.text :item_description
      t.float :item_price
      t.string :item_picture

      t.timestamps
    end
  end
end
