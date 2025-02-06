ActiveAdmin.register Category do
  permit_params :name, :image
  config.filters = false
  index do
    selectable_column
    id_column
    column "Name" do |category|
      link_to category.name, admin_category_path(category)
    end
    column "Image"  do |category|
      if (category&.image.attached?)
        image_tag url_for(category&.image), style: 'max-width: 100px; max-height: 100px;'
      else
        "No image available"
      end
    end
    column :created_at
    actions
  end

  form do |f|
    f.inputs "Category Details" do
      f.input :name
      f.input :image, as: :file
    end
    f.actions
  end

  show do
    attributes_table do
      row :name
      row :image do |category|
        if category.image.attached?
          image_tag url_for(category.image), style: 'max-width: 300px; max-height: 300px;'
        else
          "No image available"
        end
      end
    end
  end

end
