class ChangeItemExpirationDateType < ActiveRecord::Migration[7.0]
  def up
    change_column :products, :item_expiration_date, :string
  end

  def down
    change_column :products, :item_expiration_date, :date
  end
end
