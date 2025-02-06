class RemoveDescriptionAndAddImageToHomes < ActiveRecord::Migration[7.0]
  def change
    remove_column :homes, :description, :text
    add_column :homes, :image, :string
  end
end
