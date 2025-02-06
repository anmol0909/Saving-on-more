class CreateBuys < ActiveRecord::Migration[7.0]
  def change
    create_table :buys do |t|
      t.text :description

      t.timestamps
    end
  end
end
