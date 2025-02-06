class AddFilesInContacts < ActiveRecord::Migration[7.0]
  def change
    remove_column :contacts, :name, :string
    add_column :contacts, :first_name, :string
    add_column :contacts, :last_name, :string
  end
end
