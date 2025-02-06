class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :item_name
      t.string :item_number
      t.string :item_upc
      t.date :item_expiration_date
      t.string :item_lot_codes
      t.string :image

      t.timestamps
    end
  end
end
