class CreateSells < ActiveRecord::Migration[7.0]
  def change
    create_table :sells do |t|
      t.text :description

      t.timestamps
    end
  end
end
