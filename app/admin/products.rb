ActiveAdmin.register Product do
  config.filters = true
  filter :item_name
  filter :item_number
  filter :item_upc
  filter :category
  permit_params :item_name, :item_number, :item_upc, :item_expiration_date, :item_lot_codes, :category_id, :image
  index do
    selectable_column
    id_column
    column "Item Name" do |product|
      link_to product.item_name, admin_product_path(product)
    end
    column :item_number
    column :item_upc
    column :item_expiration_date
    column :category
    column :created_at
    column "Image" do |product|
      if product.image.attached?
        image_tag url_for(product.image), style: 'max-width: 100px; max-height: 100px;'
      else
        "No image available"
      end
    end
    actions
  end
  form do |f|
    f.inputs "Product Details" do
      f.input :item_name
      f.input :item_number
      f.input :item_upc
      f.input :item_lot_codes
      f.input :category_id, as: :select, collection: Category.all.map { |c| [c.name, c.id] }
      f.input :image, as: :file
      f.input :item_expiration_date, as: :select, collection: [
        ['NA', 'NA'],
        [Time.now.to_date.to_s, Time.now.to_date.to_s],
      ] + (1..30).map { |i| [i.days.from_now.to_date.to_s, i.days.from_now.to_date.to_s] }
    end
    f.actions
  end
  show do
    attributes_table do
      row :item_name
      row :item_number
      row :item_upc
      row :item_expiration_date
      row :item_lot_codes
      row :category
  
      row :image do |product|
        if product.image.attached?
          image_tag url_for(product.image), style: 'max-width: 300px; max-height: 300px;'
        else
          "No image available"
        end
      end
    end
  end
  
end
