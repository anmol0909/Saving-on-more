ActiveAdmin.register Home do
  menu label: 'Home Page Image'
  permit_params :image
  config.filters = false
  config.clear_action_items!
  
  action_item :new, only: :index do
    link_to "New Home Page Image", new_admin_home_path unless Home.exists?
  end

  index do
    selectable_column
    id_column
    column "Image" do |home|
      if home.image.attached?
        image_tag url_for(home.image), style: 'max-width: 100px; max-height: 100px;'
      else
        "No image available"
      end
    end
    actions
  end

  show do
    attributes_table do
      row :image do |home|
        if home.image.attached?
          image_tag url_for(home.image), style: 'max-width: 300px; max-height: 300px;'
        else
          "No image available"
        end
      end
    end
    active_admin_comments
  end

  form do |f|
    f.inputs "Home Image" do
      f.input :image, as: :file
    end
    f.actions
  end
  
  controller do
    before_action :check_home_existence, only: [:new, :create]

    private

    def check_home_existence
      redirect_to admin_home_path(Home.first) if Home.exists?
    end
  end
end
