class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :phone_number
      t.string :email
      t.text :message

      t.timestamps
    end
  end
end
